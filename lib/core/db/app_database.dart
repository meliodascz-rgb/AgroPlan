import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_database.g.dart';

// ── Table definitions ─────────────────────────────────────────────────────────

class DbFields extends Table {
  TextColumn get id         => text()();
  TextColumn get userId     => text()();
  TextColumn get name       => text()();
  IntColumn  get cols       => integer()();
  IntColumn  get rows       => integer()();
  IntColumn  get cellSizeCm => integer()();
  // PostgreSQL int[] is stored as JSON string: "[1,2,3]"
  TextColumn get shapeMask  => text().withDefault(const Constant('[]'))();

  @override
  Set<Column> get primaryKey => {id};
}

class DbPlacements extends Table {
  // Local composite ID: "${fieldId}_${cellIndex}_${year}_${season}"
  TextColumn get id        => text()();
  TextColumn get fieldId   => text()();
  IntColumn  get cellIndex => integer()();
  TextColumn get speciesId => text()();
  IntColumn  get year      => integer()();
  TextColumn get season    => text()(); // 'spring' | 'autumn'

  @override
  Set<Column> get primaryKey => {id};
}

// ── Database ──────────────────────────────────────────────────────────────────

@DriftDatabase(tables: [DbFields, DbPlacements])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final dir  = await getApplicationDocumentsDirectory();
      final file = File(p.join(dir.path, 'agroplan.db'));
      return NativeDatabase.createInBackground(file);
    });

// ── Provider ──────────────────────────────────────────────────────────────────

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
}
