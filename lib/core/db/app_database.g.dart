// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $DbFieldsTable extends DbFields with TableInfo<$DbFieldsTable, DbField> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbFieldsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colsMeta = const VerificationMeta('cols');
  @override
  late final GeneratedColumn<int> cols = GeneratedColumn<int>(
    'cols',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rowsMeta = const VerificationMeta('rows');
  @override
  late final GeneratedColumn<int> rows = GeneratedColumn<int>(
    'rows',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cellSizeCmMeta = const VerificationMeta(
    'cellSizeCm',
  );
  @override
  late final GeneratedColumn<int> cellSizeCm = GeneratedColumn<int>(
    'cell_size_cm',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _shapeMaskMeta = const VerificationMeta(
    'shapeMask',
  );
  @override
  late final GeneratedColumn<String> shapeMask = GeneratedColumn<String>(
    'shape_mask',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    name,
    cols,
    rows,
    cellSizeCm,
    shapeMask,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_fields';
  @override
  VerificationContext validateIntegrity(
    Insertable<DbField> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('cols')) {
      context.handle(
        _colsMeta,
        cols.isAcceptableOrUnknown(data['cols']!, _colsMeta),
      );
    } else if (isInserting) {
      context.missing(_colsMeta);
    }
    if (data.containsKey('rows')) {
      context.handle(
        _rowsMeta,
        rows.isAcceptableOrUnknown(data['rows']!, _rowsMeta),
      );
    } else if (isInserting) {
      context.missing(_rowsMeta);
    }
    if (data.containsKey('cell_size_cm')) {
      context.handle(
        _cellSizeCmMeta,
        cellSizeCm.isAcceptableOrUnknown(
          data['cell_size_cm']!,
          _cellSizeCmMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_cellSizeCmMeta);
    }
    if (data.containsKey('shape_mask')) {
      context.handle(
        _shapeMaskMeta,
        shapeMask.isAcceptableOrUnknown(data['shape_mask']!, _shapeMaskMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbField map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbField(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}user_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      cols: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cols'],
      )!,
      rows: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rows'],
      )!,
      cellSizeCm: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cell_size_cm'],
      )!,
      shapeMask: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}shape_mask'],
      )!,
    );
  }

  @override
  $DbFieldsTable createAlias(String alias) {
    return $DbFieldsTable(attachedDatabase, alias);
  }
}

class DbField extends DataClass implements Insertable<DbField> {
  final String id;
  final String userId;
  final String name;
  final int cols;
  final int rows;
  final int cellSizeCm;
  final String shapeMask;
  const DbField({
    required this.id,
    required this.userId,
    required this.name,
    required this.cols,
    required this.rows,
    required this.cellSizeCm,
    required this.shapeMask,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['name'] = Variable<String>(name);
    map['cols'] = Variable<int>(cols);
    map['rows'] = Variable<int>(rows);
    map['cell_size_cm'] = Variable<int>(cellSizeCm);
    map['shape_mask'] = Variable<String>(shapeMask);
    return map;
  }

  DbFieldsCompanion toCompanion(bool nullToAbsent) {
    return DbFieldsCompanion(
      id: Value(id),
      userId: Value(userId),
      name: Value(name),
      cols: Value(cols),
      rows: Value(rows),
      cellSizeCm: Value(cellSizeCm),
      shapeMask: Value(shapeMask),
    );
  }

  factory DbField.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbField(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      name: serializer.fromJson<String>(json['name']),
      cols: serializer.fromJson<int>(json['cols']),
      rows: serializer.fromJson<int>(json['rows']),
      cellSizeCm: serializer.fromJson<int>(json['cellSizeCm']),
      shapeMask: serializer.fromJson<String>(json['shapeMask']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'name': serializer.toJson<String>(name),
      'cols': serializer.toJson<int>(cols),
      'rows': serializer.toJson<int>(rows),
      'cellSizeCm': serializer.toJson<int>(cellSizeCm),
      'shapeMask': serializer.toJson<String>(shapeMask),
    };
  }

  DbField copyWith({
    String? id,
    String? userId,
    String? name,
    int? cols,
    int? rows,
    int? cellSizeCm,
    String? shapeMask,
  }) => DbField(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    name: name ?? this.name,
    cols: cols ?? this.cols,
    rows: rows ?? this.rows,
    cellSizeCm: cellSizeCm ?? this.cellSizeCm,
    shapeMask: shapeMask ?? this.shapeMask,
  );
  DbField copyWithCompanion(DbFieldsCompanion data) {
    return DbField(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      name: data.name.present ? data.name.value : this.name,
      cols: data.cols.present ? data.cols.value : this.cols,
      rows: data.rows.present ? data.rows.value : this.rows,
      cellSizeCm: data.cellSizeCm.present
          ? data.cellSizeCm.value
          : this.cellSizeCm,
      shapeMask: data.shapeMask.present ? data.shapeMask.value : this.shapeMask,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbField(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('cols: $cols, ')
          ..write('rows: $rows, ')
          ..write('cellSizeCm: $cellSizeCm, ')
          ..write('shapeMask: $shapeMask')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, userId, name, cols, rows, cellSizeCm, shapeMask);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbField &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.name == this.name &&
          other.cols == this.cols &&
          other.rows == this.rows &&
          other.cellSizeCm == this.cellSizeCm &&
          other.shapeMask == this.shapeMask);
}

class DbFieldsCompanion extends UpdateCompanion<DbField> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> name;
  final Value<int> cols;
  final Value<int> rows;
  final Value<int> cellSizeCm;
  final Value<String> shapeMask;
  final Value<int> rowid;
  const DbFieldsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.name = const Value.absent(),
    this.cols = const Value.absent(),
    this.rows = const Value.absent(),
    this.cellSizeCm = const Value.absent(),
    this.shapeMask = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DbFieldsCompanion.insert({
    required String id,
    required String userId,
    required String name,
    required int cols,
    required int rows,
    required int cellSizeCm,
    this.shapeMask = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       userId = Value(userId),
       name = Value(name),
       cols = Value(cols),
       rows = Value(rows),
       cellSizeCm = Value(cellSizeCm);
  static Insertable<DbField> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<String>? name,
    Expression<int>? cols,
    Expression<int>? rows,
    Expression<int>? cellSizeCm,
    Expression<String>? shapeMask,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (name != null) 'name': name,
      if (cols != null) 'cols': cols,
      if (rows != null) 'rows': rows,
      if (cellSizeCm != null) 'cell_size_cm': cellSizeCm,
      if (shapeMask != null) 'shape_mask': shapeMask,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DbFieldsCompanion copyWith({
    Value<String>? id,
    Value<String>? userId,
    Value<String>? name,
    Value<int>? cols,
    Value<int>? rows,
    Value<int>? cellSizeCm,
    Value<String>? shapeMask,
    Value<int>? rowid,
  }) {
    return DbFieldsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      cols: cols ?? this.cols,
      rows: rows ?? this.rows,
      cellSizeCm: cellSizeCm ?? this.cellSizeCm,
      shapeMask: shapeMask ?? this.shapeMask,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (cols.present) {
      map['cols'] = Variable<int>(cols.value);
    }
    if (rows.present) {
      map['rows'] = Variable<int>(rows.value);
    }
    if (cellSizeCm.present) {
      map['cell_size_cm'] = Variable<int>(cellSizeCm.value);
    }
    if (shapeMask.present) {
      map['shape_mask'] = Variable<String>(shapeMask.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbFieldsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('cols: $cols, ')
          ..write('rows: $rows, ')
          ..write('cellSizeCm: $cellSizeCm, ')
          ..write('shapeMask: $shapeMask, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DbPlacementsTable extends DbPlacements
    with TableInfo<$DbPlacementsTable, DbPlacement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbPlacementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fieldIdMeta = const VerificationMeta(
    'fieldId',
  );
  @override
  late final GeneratedColumn<String> fieldId = GeneratedColumn<String>(
    'field_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cellIndexMeta = const VerificationMeta(
    'cellIndex',
  );
  @override
  late final GeneratedColumn<int> cellIndex = GeneratedColumn<int>(
    'cell_index',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _speciesIdMeta = const VerificationMeta(
    'speciesId',
  );
  @override
  late final GeneratedColumn<String> speciesId = GeneratedColumn<String>(
    'species_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
    'year',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _seasonMeta = const VerificationMeta('season');
  @override
  late final GeneratedColumn<String> season = GeneratedColumn<String>(
    'season',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    fieldId,
    cellIndex,
    speciesId,
    year,
    season,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_placements';
  @override
  VerificationContext validateIntegrity(
    Insertable<DbPlacement> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('field_id')) {
      context.handle(
        _fieldIdMeta,
        fieldId.isAcceptableOrUnknown(data['field_id']!, _fieldIdMeta),
      );
    } else if (isInserting) {
      context.missing(_fieldIdMeta);
    }
    if (data.containsKey('cell_index')) {
      context.handle(
        _cellIndexMeta,
        cellIndex.isAcceptableOrUnknown(data['cell_index']!, _cellIndexMeta),
      );
    } else if (isInserting) {
      context.missing(_cellIndexMeta);
    }
    if (data.containsKey('species_id')) {
      context.handle(
        _speciesIdMeta,
        speciesId.isAcceptableOrUnknown(data['species_id']!, _speciesIdMeta),
      );
    } else if (isInserting) {
      context.missing(_speciesIdMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('season')) {
      context.handle(
        _seasonMeta,
        season.isAcceptableOrUnknown(data['season']!, _seasonMeta),
      );
    } else if (isInserting) {
      context.missing(_seasonMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbPlacement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbPlacement(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      fieldId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field_id'],
      )!,
      cellIndex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cell_index'],
      )!,
      speciesId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}species_id'],
      )!,
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}year'],
      )!,
      season: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}season'],
      )!,
    );
  }

  @override
  $DbPlacementsTable createAlias(String alias) {
    return $DbPlacementsTable(attachedDatabase, alias);
  }
}

class DbPlacement extends DataClass implements Insertable<DbPlacement> {
  final String id;
  final String fieldId;
  final int cellIndex;
  final String speciesId;
  final int year;
  final String season;
  const DbPlacement({
    required this.id,
    required this.fieldId,
    required this.cellIndex,
    required this.speciesId,
    required this.year,
    required this.season,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['field_id'] = Variable<String>(fieldId);
    map['cell_index'] = Variable<int>(cellIndex);
    map['species_id'] = Variable<String>(speciesId);
    map['year'] = Variable<int>(year);
    map['season'] = Variable<String>(season);
    return map;
  }

  DbPlacementsCompanion toCompanion(bool nullToAbsent) {
    return DbPlacementsCompanion(
      id: Value(id),
      fieldId: Value(fieldId),
      cellIndex: Value(cellIndex),
      speciesId: Value(speciesId),
      year: Value(year),
      season: Value(season),
    );
  }

  factory DbPlacement.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbPlacement(
      id: serializer.fromJson<String>(json['id']),
      fieldId: serializer.fromJson<String>(json['fieldId']),
      cellIndex: serializer.fromJson<int>(json['cellIndex']),
      speciesId: serializer.fromJson<String>(json['speciesId']),
      year: serializer.fromJson<int>(json['year']),
      season: serializer.fromJson<String>(json['season']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'fieldId': serializer.toJson<String>(fieldId),
      'cellIndex': serializer.toJson<int>(cellIndex),
      'speciesId': serializer.toJson<String>(speciesId),
      'year': serializer.toJson<int>(year),
      'season': serializer.toJson<String>(season),
    };
  }

  DbPlacement copyWith({
    String? id,
    String? fieldId,
    int? cellIndex,
    String? speciesId,
    int? year,
    String? season,
  }) => DbPlacement(
    id: id ?? this.id,
    fieldId: fieldId ?? this.fieldId,
    cellIndex: cellIndex ?? this.cellIndex,
    speciesId: speciesId ?? this.speciesId,
    year: year ?? this.year,
    season: season ?? this.season,
  );
  DbPlacement copyWithCompanion(DbPlacementsCompanion data) {
    return DbPlacement(
      id: data.id.present ? data.id.value : this.id,
      fieldId: data.fieldId.present ? data.fieldId.value : this.fieldId,
      cellIndex: data.cellIndex.present ? data.cellIndex.value : this.cellIndex,
      speciesId: data.speciesId.present ? data.speciesId.value : this.speciesId,
      year: data.year.present ? data.year.value : this.year,
      season: data.season.present ? data.season.value : this.season,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbPlacement(')
          ..write('id: $id, ')
          ..write('fieldId: $fieldId, ')
          ..write('cellIndex: $cellIndex, ')
          ..write('speciesId: $speciesId, ')
          ..write('year: $year, ')
          ..write('season: $season')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, fieldId, cellIndex, speciesId, year, season);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbPlacement &&
          other.id == this.id &&
          other.fieldId == this.fieldId &&
          other.cellIndex == this.cellIndex &&
          other.speciesId == this.speciesId &&
          other.year == this.year &&
          other.season == this.season);
}

class DbPlacementsCompanion extends UpdateCompanion<DbPlacement> {
  final Value<String> id;
  final Value<String> fieldId;
  final Value<int> cellIndex;
  final Value<String> speciesId;
  final Value<int> year;
  final Value<String> season;
  final Value<int> rowid;
  const DbPlacementsCompanion({
    this.id = const Value.absent(),
    this.fieldId = const Value.absent(),
    this.cellIndex = const Value.absent(),
    this.speciesId = const Value.absent(),
    this.year = const Value.absent(),
    this.season = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DbPlacementsCompanion.insert({
    required String id,
    required String fieldId,
    required int cellIndex,
    required String speciesId,
    required int year,
    required String season,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       fieldId = Value(fieldId),
       cellIndex = Value(cellIndex),
       speciesId = Value(speciesId),
       year = Value(year),
       season = Value(season);
  static Insertable<DbPlacement> custom({
    Expression<String>? id,
    Expression<String>? fieldId,
    Expression<int>? cellIndex,
    Expression<String>? speciesId,
    Expression<int>? year,
    Expression<String>? season,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fieldId != null) 'field_id': fieldId,
      if (cellIndex != null) 'cell_index': cellIndex,
      if (speciesId != null) 'species_id': speciesId,
      if (year != null) 'year': year,
      if (season != null) 'season': season,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DbPlacementsCompanion copyWith({
    Value<String>? id,
    Value<String>? fieldId,
    Value<int>? cellIndex,
    Value<String>? speciesId,
    Value<int>? year,
    Value<String>? season,
    Value<int>? rowid,
  }) {
    return DbPlacementsCompanion(
      id: id ?? this.id,
      fieldId: fieldId ?? this.fieldId,
      cellIndex: cellIndex ?? this.cellIndex,
      speciesId: speciesId ?? this.speciesId,
      year: year ?? this.year,
      season: season ?? this.season,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (fieldId.present) {
      map['field_id'] = Variable<String>(fieldId.value);
    }
    if (cellIndex.present) {
      map['cell_index'] = Variable<int>(cellIndex.value);
    }
    if (speciesId.present) {
      map['species_id'] = Variable<String>(speciesId.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    if (season.present) {
      map['season'] = Variable<String>(season.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbPlacementsCompanion(')
          ..write('id: $id, ')
          ..write('fieldId: $fieldId, ')
          ..write('cellIndex: $cellIndex, ')
          ..write('speciesId: $speciesId, ')
          ..write('year: $year, ')
          ..write('season: $season, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $DbFieldsTable dbFields = $DbFieldsTable(this);
  late final $DbPlacementsTable dbPlacements = $DbPlacementsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dbFields, dbPlacements];
}

typedef $$DbFieldsTableCreateCompanionBuilder =
    DbFieldsCompanion Function({
      required String id,
      required String userId,
      required String name,
      required int cols,
      required int rows,
      required int cellSizeCm,
      Value<String> shapeMask,
      Value<int> rowid,
    });
typedef $$DbFieldsTableUpdateCompanionBuilder =
    DbFieldsCompanion Function({
      Value<String> id,
      Value<String> userId,
      Value<String> name,
      Value<int> cols,
      Value<int> rows,
      Value<int> cellSizeCm,
      Value<String> shapeMask,
      Value<int> rowid,
    });

class $$DbFieldsTableFilterComposer
    extends Composer<_$AppDatabase, $DbFieldsTable> {
  $$DbFieldsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cols => $composableBuilder(
    column: $table.cols,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rows => $composableBuilder(
    column: $table.rows,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cellSizeCm => $composableBuilder(
    column: $table.cellSizeCm,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shapeMask => $composableBuilder(
    column: $table.shapeMask,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DbFieldsTableOrderingComposer
    extends Composer<_$AppDatabase, $DbFieldsTable> {
  $$DbFieldsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cols => $composableBuilder(
    column: $table.cols,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rows => $composableBuilder(
    column: $table.rows,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cellSizeCm => $composableBuilder(
    column: $table.cellSizeCm,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shapeMask => $composableBuilder(
    column: $table.shapeMask,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DbFieldsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DbFieldsTable> {
  $$DbFieldsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get cols =>
      $composableBuilder(column: $table.cols, builder: (column) => column);

  GeneratedColumn<int> get rows =>
      $composableBuilder(column: $table.rows, builder: (column) => column);

  GeneratedColumn<int> get cellSizeCm => $composableBuilder(
    column: $table.cellSizeCm,
    builder: (column) => column,
  );

  GeneratedColumn<String> get shapeMask =>
      $composableBuilder(column: $table.shapeMask, builder: (column) => column);
}

class $$DbFieldsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DbFieldsTable,
          DbField,
          $$DbFieldsTableFilterComposer,
          $$DbFieldsTableOrderingComposer,
          $$DbFieldsTableAnnotationComposer,
          $$DbFieldsTableCreateCompanionBuilder,
          $$DbFieldsTableUpdateCompanionBuilder,
          (DbField, BaseReferences<_$AppDatabase, $DbFieldsTable, DbField>),
          DbField,
          PrefetchHooks Function()
        > {
  $$DbFieldsTableTableManager(_$AppDatabase db, $DbFieldsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DbFieldsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DbFieldsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DbFieldsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> userId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> cols = const Value.absent(),
                Value<int> rows = const Value.absent(),
                Value<int> cellSizeCm = const Value.absent(),
                Value<String> shapeMask = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DbFieldsCompanion(
                id: id,
                userId: userId,
                name: name,
                cols: cols,
                rows: rows,
                cellSizeCm: cellSizeCm,
                shapeMask: shapeMask,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String userId,
                required String name,
                required int cols,
                required int rows,
                required int cellSizeCm,
                Value<String> shapeMask = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DbFieldsCompanion.insert(
                id: id,
                userId: userId,
                name: name,
                cols: cols,
                rows: rows,
                cellSizeCm: cellSizeCm,
                shapeMask: shapeMask,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DbFieldsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DbFieldsTable,
      DbField,
      $$DbFieldsTableFilterComposer,
      $$DbFieldsTableOrderingComposer,
      $$DbFieldsTableAnnotationComposer,
      $$DbFieldsTableCreateCompanionBuilder,
      $$DbFieldsTableUpdateCompanionBuilder,
      (DbField, BaseReferences<_$AppDatabase, $DbFieldsTable, DbField>),
      DbField,
      PrefetchHooks Function()
    >;
typedef $$DbPlacementsTableCreateCompanionBuilder =
    DbPlacementsCompanion Function({
      required String id,
      required String fieldId,
      required int cellIndex,
      required String speciesId,
      required int year,
      required String season,
      Value<int> rowid,
    });
typedef $$DbPlacementsTableUpdateCompanionBuilder =
    DbPlacementsCompanion Function({
      Value<String> id,
      Value<String> fieldId,
      Value<int> cellIndex,
      Value<String> speciesId,
      Value<int> year,
      Value<String> season,
      Value<int> rowid,
    });

class $$DbPlacementsTableFilterComposer
    extends Composer<_$AppDatabase, $DbPlacementsTable> {
  $$DbPlacementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldId => $composableBuilder(
    column: $table.fieldId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cellIndex => $composableBuilder(
    column: $table.cellIndex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get speciesId => $composableBuilder(
    column: $table.speciesId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get season => $composableBuilder(
    column: $table.season,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DbPlacementsTableOrderingComposer
    extends Composer<_$AppDatabase, $DbPlacementsTable> {
  $$DbPlacementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldId => $composableBuilder(
    column: $table.fieldId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cellIndex => $composableBuilder(
    column: $table.cellIndex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get speciesId => $composableBuilder(
    column: $table.speciesId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get season => $composableBuilder(
    column: $table.season,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DbPlacementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DbPlacementsTable> {
  $$DbPlacementsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fieldId =>
      $composableBuilder(column: $table.fieldId, builder: (column) => column);

  GeneratedColumn<int> get cellIndex =>
      $composableBuilder(column: $table.cellIndex, builder: (column) => column);

  GeneratedColumn<String> get speciesId =>
      $composableBuilder(column: $table.speciesId, builder: (column) => column);

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<String> get season =>
      $composableBuilder(column: $table.season, builder: (column) => column);
}

class $$DbPlacementsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DbPlacementsTable,
          DbPlacement,
          $$DbPlacementsTableFilterComposer,
          $$DbPlacementsTableOrderingComposer,
          $$DbPlacementsTableAnnotationComposer,
          $$DbPlacementsTableCreateCompanionBuilder,
          $$DbPlacementsTableUpdateCompanionBuilder,
          (
            DbPlacement,
            BaseReferences<_$AppDatabase, $DbPlacementsTable, DbPlacement>,
          ),
          DbPlacement,
          PrefetchHooks Function()
        > {
  $$DbPlacementsTableTableManager(_$AppDatabase db, $DbPlacementsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DbPlacementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DbPlacementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DbPlacementsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> fieldId = const Value.absent(),
                Value<int> cellIndex = const Value.absent(),
                Value<String> speciesId = const Value.absent(),
                Value<int> year = const Value.absent(),
                Value<String> season = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DbPlacementsCompanion(
                id: id,
                fieldId: fieldId,
                cellIndex: cellIndex,
                speciesId: speciesId,
                year: year,
                season: season,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String fieldId,
                required int cellIndex,
                required String speciesId,
                required int year,
                required String season,
                Value<int> rowid = const Value.absent(),
              }) => DbPlacementsCompanion.insert(
                id: id,
                fieldId: fieldId,
                cellIndex: cellIndex,
                speciesId: speciesId,
                year: year,
                season: season,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DbPlacementsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DbPlacementsTable,
      DbPlacement,
      $$DbPlacementsTableFilterComposer,
      $$DbPlacementsTableOrderingComposer,
      $$DbPlacementsTableAnnotationComposer,
      $$DbPlacementsTableCreateCompanionBuilder,
      $$DbPlacementsTableUpdateCompanionBuilder,
      (
        DbPlacement,
        BaseReferences<_$AppDatabase, $DbPlacementsTable, DbPlacement>,
      ),
      DbPlacement,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$DbFieldsTableTableManager get dbFields =>
      $$DbFieldsTableTableManager(_db, _db.dbFields);
  $$DbPlacementsTableTableManager get dbPlacements =>
      $$DbPlacementsTableTableManager(_db, _db.dbPlacements);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appDatabase)
final appDatabaseProvider = AppDatabaseProvider._();

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'448adad5717e7b1c0b3ca3ca7e03d0b2116237af';
