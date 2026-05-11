// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'placement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Placement _$PlacementFromJson(Map<String, dynamic> json) {
  return _Placement.fromJson(json);
}

/// @nodoc
mixin _$Placement {
  String get id => throw _privateConstructorUsedError;
  String get fieldId => throw _privateConstructorUsedError;
  int get cellIndex => throw _privateConstructorUsedError;
  String get plantId => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  Season get season => throw _privateConstructorUsedError;

  /// Serializes this Placement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Placement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlacementCopyWith<Placement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacementCopyWith<$Res> {
  factory $PlacementCopyWith(Placement value, $Res Function(Placement) then) =
      _$PlacementCopyWithImpl<$Res, Placement>;
  @useResult
  $Res call(
      {String id,
      String fieldId,
      int cellIndex,
      String plantId,
      int year,
      Season season});
}

/// @nodoc
class _$PlacementCopyWithImpl<$Res, $Val extends Placement>
    implements $PlacementCopyWith<$Res> {
  _$PlacementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Placement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fieldId = null,
    Object? cellIndex = null,
    Object? plantId = null,
    Object? year = null,
    Object? season = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fieldId: null == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as String,
      cellIndex: null == cellIndex
          ? _value.cellIndex
          : cellIndex // ignore: cast_nullable_to_non_nullable
              as int,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as Season,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlacementImplCopyWith<$Res>
    implements $PlacementCopyWith<$Res> {
  factory _$$PlacementImplCopyWith(
          _$PlacementImpl value, $Res Function(_$PlacementImpl) then) =
      __$$PlacementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fieldId,
      int cellIndex,
      String plantId,
      int year,
      Season season});
}

/// @nodoc
class __$$PlacementImplCopyWithImpl<$Res>
    extends _$PlacementCopyWithImpl<$Res, _$PlacementImpl>
    implements _$$PlacementImplCopyWith<$Res> {
  __$$PlacementImplCopyWithImpl(
      _$PlacementImpl _value, $Res Function(_$PlacementImpl) _then)
      : super(_value, _then);

  /// Create a copy of Placement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fieldId = null,
    Object? cellIndex = null,
    Object? plantId = null,
    Object? year = null,
    Object? season = null,
  }) {
    return _then(_$PlacementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fieldId: null == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as String,
      cellIndex: null == cellIndex
          ? _value.cellIndex
          : cellIndex // ignore: cast_nullable_to_non_nullable
              as int,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as Season,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacementImpl implements _Placement {
  const _$PlacementImpl(
      {required this.id,
      required this.fieldId,
      required this.cellIndex,
      required this.plantId,
      required this.year,
      required this.season});

  factory _$PlacementImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacementImplFromJson(json);

  @override
  final String id;
  @override
  final String fieldId;
  @override
  final int cellIndex;
  @override
  final String plantId;
  @override
  final int year;
  @override
  final Season season;

  @override
  String toString() {
    return 'Placement(id: $id, fieldId: $fieldId, cellIndex: $cellIndex, plantId: $plantId, year: $year, season: $season)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            (identical(other.cellIndex, cellIndex) ||
                other.cellIndex == cellIndex) &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.season, season) || other.season == season));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fieldId, cellIndex, plantId, year, season);

  /// Create a copy of Placement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacementImplCopyWith<_$PlacementImpl> get copyWith =>
      __$$PlacementImplCopyWithImpl<_$PlacementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacementImplToJson(
      this,
    );
  }
}

abstract class _Placement implements Placement {
  const factory _Placement(
      {required final String id,
      required final String fieldId,
      required final int cellIndex,
      required final String plantId,
      required final int year,
      required final Season season}) = _$PlacementImpl;

  factory _Placement.fromJson(Map<String, dynamic> json) =
      _$PlacementImpl.fromJson;

  @override
  String get id;
  @override
  String get fieldId;
  @override
  int get cellIndex;
  @override
  String get plantId;
  @override
  int get year;
  @override
  Season get season;

  /// Create a copy of Placement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlacementImplCopyWith<_$PlacementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
