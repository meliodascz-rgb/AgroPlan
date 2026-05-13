import 'dart:async';
import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../db/app_database.dart';
import '../../shared/models/field.dart';
import '../../shared/models/placement.dart';

part 'field_repository.g.dart';

@Riverpod(keepAlive: true)
FieldRepository fieldRepository(Ref ref) =>
    FieldRepository(ref.watch(appDatabaseProvider));

class FieldRepository {
  FieldRepository(this._db);

  final AppDatabase _db;
  SupabaseClient get _supa => Supabase.instance.client;

  // ── Fields ────────────────────────────────────────────────────────────────

  /// Fetch fields from Supabase and upsert into Drift.
  Future<void> hydrateFields(String userId) async {
    final rows = await _supa.from('fields').select().eq('user_id', userId);
    await _db.batch((batch) {
      for (final row in rows) {
        batch.insert(
          _db.dbFields,
          _supaRowToDbField(row),
          mode: InsertMode.insertOrReplace,
        );
      }
    });
  }

  /// Read cached fields from Drift.
  Future<List<Field>> getFields(String userId) async {
    final rows = await (_db.select(_db.dbFields)
          ..where((t) => t.userId.equals(userId)))
        .get();
    return rows.map(_dbFieldToModel).toList();
  }

  /// Insert a new field into Supabase (gets UUID), then cache in Drift.
  Future<Field> createField({
    required String userId,
    required String name,
    required int cols,
    required int rows,
    required int cellSizeCm,
  }) async {
    final res = await _supa.from('fields').insert({
      'user_id':      userId,
      'name':         name,
      'cols':         cols,
      'rows':         rows,
      'cell_size_cm': cellSizeCm,
      'shape_mask':   <int>[],
    }).select().single();

    final field = Field.fromJson(res);
    await _db.into(_db.dbFields).insertOnConflictUpdate(_modelToDbField(field));
    return field;
  }

  Future<void> updateFieldName(String fieldId, String newName) async {
    await (_db.update(_db.dbFields)..where((t) => t.id.equals(fieldId)))
        .write(DbFieldsCompanion(name: Value(newName)));
    await _supa.from('fields').update({'name': newName}).eq('id', fieldId);
  }

  Future<void> updateFieldCellSize(String fieldId, int cellSizeCm) async {
    await (_db.update(_db.dbFields)..where((t) => t.id.equals(fieldId)))
        .write(DbFieldsCompanion(cellSizeCm: Value(cellSizeCm)));
    await _supa
        .from('fields')
        .update({'cell_size_cm': cellSizeCm})
        .eq('id', fieldId);
  }

  Future<void> deleteField(String fieldId) async {
    // Delete local placements first, then the field row
    await (_db.delete(_db.dbPlacements)
          ..where((t) => t.fieldId.equals(fieldId)))
        .go();
    await (_db.delete(_db.dbFields)..where((t) => t.id.equals(fieldId))).go();
    // Supabase cascades placements via FK
    await _supa.from('fields').delete().eq('id', fieldId);
  }

  // ── Placements ────────────────────────────────────────────────────────────

  /// All placements for a field (all years + seasons) from Drift.
  Future<List<Placement>> getPlacementsForField(String fieldId) async {
    final rows = await (_db.select(_db.dbPlacements)
          ..where((t) => t.fieldId.equals(fieldId)))
        .get();
    return rows.map(_dbPlacementToModel).toList();
  }

  /// Pull all placements for a field from Supabase and cache in Drift.
  Future<void> syncPlacementsFromSupabase(String fieldId) async {
    final rows = await _supa
        .from('placements')
        .select()
        .eq('field_id', fieldId);
    await _db.batch((batch) {
      for (final row in rows) {
        batch.insert(
          _db.dbPlacements,
          _supaRowToDbPlacement(row),
          mode: InsertMode.insertOrReplace,
        );
      }
    });
  }

  /// Upsert a placement into Drift and Supabase.
  /// Supabase uses (field_id, cell_index, year, season) unique conflict target.
  Future<void> addPlacement(Placement placement) async {
    await _db
        .into(_db.dbPlacements)
        .insertOnConflictUpdate(_modelToDbPlacement(placement));
    unawaited(
      _supa.from('placements').upsert(
        {
          'field_id':   placement.fieldId,
          'cell_index': placement.cellIndex,
          'species_id': placement.speciesId,
          'year':       placement.year,
          'season':     placement.season.name,
        },
        onConflict: 'field_id,cell_index,year,season',
      ),
    );
  }

  /// Delete a placement from Drift and Supabase by composite key.
  Future<void> removePlacement({
    required String fieldId,
    required int cellIndex,
    required int year,
    required Season season,
  }) async {
    await (_db.delete(_db.dbPlacements)
          ..where((t) =>
              t.fieldId.equals(fieldId) &
              t.cellIndex.equals(cellIndex) &
              t.year.equals(year) &
              t.season.equals(season.name)))
        .go();
    unawaited(
      _supa
          .from('placements')
          .delete()
          .eq('field_id', fieldId)
          .eq('cell_index', cellIndex)
          .eq('year', year)
          .eq('season', season.name),
    );
  }

  // ── Mappers ───────────────────────────────────────────────────────────────

  Field _dbFieldToModel(DbField r) => Field(
        id:         r.id,
        userId:     r.userId,
        name:       r.name,
        cols:       r.cols,
        rows:       r.rows,
        cellSizeCm: r.cellSizeCm,
        shapeMask:  (jsonDecode(r.shapeMask) as List<dynamic>).cast<int>(),
      );

  DbFieldsCompanion _modelToDbField(Field f) => DbFieldsCompanion(
        id:         Value(f.id),
        userId:     Value(f.userId),
        name:       Value(f.name),
        cols:       Value(f.cols),
        rows:       Value(f.rows),
        cellSizeCm: Value(f.cellSizeCm),
        shapeMask:  Value(jsonEncode(f.shapeMask)),
      );

  // Supabase row → Drift companion (field comes back with camelCase via Field.fromJson)
  DbFieldsCompanion _supaRowToDbField(Map<String, dynamic> row) =>
      _modelToDbField(Field.fromJson(row));

  Placement _dbPlacementToModel(DbPlacement r) => Placement(
        id:        r.id,
        fieldId:   r.fieldId,
        cellIndex: r.cellIndex,
        speciesId: r.speciesId,
        year:      r.year,
        season:    Season.values.firstWhere((s) => s.name == r.season),
      );

  DbPlacementsCompanion _modelToDbPlacement(Placement p) =>
      DbPlacementsCompanion(
        id:        Value(p.id),
        fieldId:   Value(p.fieldId),
        cellIndex: Value(p.cellIndex),
        speciesId: Value(p.speciesId),
        year:      Value(p.year),
        season:    Value(p.season.name),
      );

  // Supabase row → Drift companion; local ID is composite key (no UUID needed)
  DbPlacementsCompanion _supaRowToDbPlacement(Map<String, dynamic> row) {
    final fieldId   = row['field_id']   as String;
    final cellIndex = row['cell_index'] as int;
    final year      = row['year']       as int;
    final season    = row['season']     as String;
    return DbPlacementsCompanion(
      id:        Value('${fieldId}_${cellIndex}_${year}_$season'),
      fieldId:   Value(fieldId),
      cellIndex: Value(cellIndex),
      speciesId: Value(row['species_id'] as String),
      year:      Value(year),
      season:    Value(season),
    );
  }
}
