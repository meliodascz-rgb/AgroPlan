// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Field _$FieldFromJson(Map<String, dynamic> json) {
  return _Field.fromJson(json);
}

/// @nodoc
mixin _$Field {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get cols => throw _privateConstructorUsedError;
  int get rows => throw _privateConstructorUsedError;
  int get cellSizeCm =>
      throw _privateConstructorUsedError; // 20 / 30 / 50 / 100
  List<int> get shapeMask => throw _privateConstructorUsedError;

  /// Serializes this Field to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FieldCopyWith<Field> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldCopyWith<$Res> {
  factory $FieldCopyWith(Field value, $Res Function(Field) then) =
      _$FieldCopyWithImpl<$Res, Field>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      int cols,
      int rows,
      int cellSizeCm,
      List<int> shapeMask});
}

/// @nodoc
class _$FieldCopyWithImpl<$Res, $Val extends Field>
    implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? cols = null,
    Object? rows = null,
    Object? cellSizeCm = null,
    Object? shapeMask = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cols: null == cols
          ? _value.cols
          : cols // ignore: cast_nullable_to_non_nullable
              as int,
      rows: null == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as int,
      cellSizeCm: null == cellSizeCm
          ? _value.cellSizeCm
          : cellSizeCm // ignore: cast_nullable_to_non_nullable
              as int,
      shapeMask: null == shapeMask
          ? _value.shapeMask
          : shapeMask // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$FieldImplCopyWith(
          _$FieldImpl value, $Res Function(_$FieldImpl) then) =
      __$$FieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      int cols,
      int rows,
      int cellSizeCm,
      List<int> shapeMask});
}

/// @nodoc
class __$$FieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$FieldImpl>
    implements _$$FieldImplCopyWith<$Res> {
  __$$FieldImplCopyWithImpl(
      _$FieldImpl _value, $Res Function(_$FieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? cols = null,
    Object? rows = null,
    Object? cellSizeCm = null,
    Object? shapeMask = null,
  }) {
    return _then(_$FieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cols: null == cols
          ? _value.cols
          : cols // ignore: cast_nullable_to_non_nullable
              as int,
      rows: null == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as int,
      cellSizeCm: null == cellSizeCm
          ? _value.cellSizeCm
          : cellSizeCm // ignore: cast_nullable_to_non_nullable
              as int,
      shapeMask: null == shapeMask
          ? _value._shapeMask
          : shapeMask // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldImpl implements _Field {
  const _$FieldImpl(
      {required this.id,
      required this.userId,
      required this.name,
      required this.cols,
      required this.rows,
      required this.cellSizeCm,
      final List<int> shapeMask = const []})
      : _shapeMask = shapeMask;

  factory _$FieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;
  @override
  final int cols;
  @override
  final int rows;
  @override
  final int cellSizeCm;
// 20 / 30 / 50 / 100
  final List<int> _shapeMask;
// 20 / 30 / 50 / 100
  @override
  @JsonKey()
  List<int> get shapeMask {
    if (_shapeMask is EqualUnmodifiableListView) return _shapeMask;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shapeMask);
  }

  @override
  String toString() {
    return 'Field(id: $id, userId: $userId, name: $name, cols: $cols, rows: $rows, cellSizeCm: $cellSizeCm, shapeMask: $shapeMask)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cols, cols) || other.cols == cols) &&
            (identical(other.rows, rows) || other.rows == rows) &&
            (identical(other.cellSizeCm, cellSizeCm) ||
                other.cellSizeCm == cellSizeCm) &&
            const DeepCollectionEquality()
                .equals(other._shapeMask, _shapeMask));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, name, cols, rows,
      cellSizeCm, const DeepCollectionEquality().hash(_shapeMask));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldImplCopyWith<_$FieldImpl> get copyWith =>
      __$$FieldImplCopyWithImpl<_$FieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldImplToJson(
      this,
    );
  }
}

abstract class _Field implements Field {
  const factory _Field(
      {required final String id,
      required final String userId,
      required final String name,
      required final int cols,
      required final int rows,
      required final int cellSizeCm,
      final List<int> shapeMask}) = _$FieldImpl;

  factory _Field.fromJson(Map<String, dynamic> json) = _$FieldImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get name;
  @override
  int get cols;
  @override
  int get rows;
  @override
  int get cellSizeCm; // 20 / 30 / 50 / 100
  @override
  List<int> get shapeMask;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldImplCopyWith<_$FieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
