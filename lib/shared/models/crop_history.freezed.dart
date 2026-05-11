// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crop_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CropHistory _$CropHistoryFromJson(Map<String, dynamic> json) {
  return _CropHistory.fromJson(json);
}

/// @nodoc
mixin _$CropHistory {
  String get id => throw _privateConstructorUsedError;
  String get fieldId => throw _privateConstructorUsedError;
  int get cellIndex => throw _privateConstructorUsedError;
  String get plantId => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  bool get diseaseLogged => throw _privateConstructorUsedError;
  String? get diseaseNote => throw _privateConstructorUsedError;

  /// Serializes this CropHistory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CropHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CropHistoryCopyWith<CropHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropHistoryCopyWith<$Res> {
  factory $CropHistoryCopyWith(
          CropHistory value, $Res Function(CropHistory) then) =
      _$CropHistoryCopyWithImpl<$Res, CropHistory>;
  @useResult
  $Res call(
      {String id,
      String fieldId,
      int cellIndex,
      String plantId,
      int year,
      bool diseaseLogged,
      String? diseaseNote});
}

/// @nodoc
class _$CropHistoryCopyWithImpl<$Res, $Val extends CropHistory>
    implements $CropHistoryCopyWith<$Res> {
  _$CropHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CropHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fieldId = null,
    Object? cellIndex = null,
    Object? plantId = null,
    Object? year = null,
    Object? diseaseLogged = null,
    Object? diseaseNote = freezed,
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
      diseaseLogged: null == diseaseLogged
          ? _value.diseaseLogged
          : diseaseLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      diseaseNote: freezed == diseaseNote
          ? _value.diseaseNote
          : diseaseNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CropHistoryImplCopyWith<$Res>
    implements $CropHistoryCopyWith<$Res> {
  factory _$$CropHistoryImplCopyWith(
          _$CropHistoryImpl value, $Res Function(_$CropHistoryImpl) then) =
      __$$CropHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fieldId,
      int cellIndex,
      String plantId,
      int year,
      bool diseaseLogged,
      String? diseaseNote});
}

/// @nodoc
class __$$CropHistoryImplCopyWithImpl<$Res>
    extends _$CropHistoryCopyWithImpl<$Res, _$CropHistoryImpl>
    implements _$$CropHistoryImplCopyWith<$Res> {
  __$$CropHistoryImplCopyWithImpl(
      _$CropHistoryImpl _value, $Res Function(_$CropHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CropHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fieldId = null,
    Object? cellIndex = null,
    Object? plantId = null,
    Object? year = null,
    Object? diseaseLogged = null,
    Object? diseaseNote = freezed,
  }) {
    return _then(_$CropHistoryImpl(
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
      diseaseLogged: null == diseaseLogged
          ? _value.diseaseLogged
          : diseaseLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      diseaseNote: freezed == diseaseNote
          ? _value.diseaseNote
          : diseaseNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CropHistoryImpl implements _CropHistory {
  const _$CropHistoryImpl(
      {required this.id,
      required this.fieldId,
      required this.cellIndex,
      required this.plantId,
      required this.year,
      this.diseaseLogged = false,
      this.diseaseNote});

  factory _$CropHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CropHistoryImplFromJson(json);

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
  @JsonKey()
  final bool diseaseLogged;
  @override
  final String? diseaseNote;

  @override
  String toString() {
    return 'CropHistory(id: $id, fieldId: $fieldId, cellIndex: $cellIndex, plantId: $plantId, year: $year, diseaseLogged: $diseaseLogged, diseaseNote: $diseaseNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CropHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            (identical(other.cellIndex, cellIndex) ||
                other.cellIndex == cellIndex) &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.diseaseLogged, diseaseLogged) ||
                other.diseaseLogged == diseaseLogged) &&
            (identical(other.diseaseNote, diseaseNote) ||
                other.diseaseNote == diseaseNote));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fieldId, cellIndex, plantId,
      year, diseaseLogged, diseaseNote);

  /// Create a copy of CropHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CropHistoryImplCopyWith<_$CropHistoryImpl> get copyWith =>
      __$$CropHistoryImplCopyWithImpl<_$CropHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CropHistoryImplToJson(
      this,
    );
  }
}

abstract class _CropHistory implements CropHistory {
  const factory _CropHistory(
      {required final String id,
      required final String fieldId,
      required final int cellIndex,
      required final String plantId,
      required final int year,
      final bool diseaseLogged,
      final String? diseaseNote}) = _$CropHistoryImpl;

  factory _CropHistory.fromJson(Map<String, dynamic> json) =
      _$CropHistoryImpl.fromJson;

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
  bool get diseaseLogged;
  @override
  String? get diseaseNote;

  /// Create a copy of CropHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CropHistoryImplCopyWith<_$CropHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
