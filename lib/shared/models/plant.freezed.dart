// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Plant _$PlantFromJson(Map<String, dynamic> json) {
  return _Plant.fromJson(json);
}

/// @nodoc
mixin _$Plant {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get nameLatin => throw _privateConstructorUsedError;
  String get family => throw _privateConstructorUsedError;
  String get letter => throw _privateConstructorUsedError;
  String get chipColorHex =>
      throw _privateConstructorUsedError; // e.g. '#7DB57E' — matches PLANTS map in screens-shared.jsx
  int get sunNeeds => throw _privateConstructorUsedError; // 1–3
  int get waterNeeds => throw _privateConstructorUsedError; // 1–3
  int get spaceNeeds => throw _privateConstructorUsedError; // 1–3
  List<String> get goodNeighborIds => throw _privateConstructorUsedError;
  List<String> get badNeighborIds => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String? get rotationBefore => throw _privateConstructorUsedError;
  String? get rotationAfter => throw _privateConstructorUsedError;

  /// Serializes this Plant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Plant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlantCopyWith<Plant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlantCopyWith<$Res> {
  factory $PlantCopyWith(Plant value, $Res Function(Plant) then) =
      _$PlantCopyWithImpl<$Res, Plant>;
  @useResult
  $Res call(
      {String id,
      String name,
      String nameLatin,
      String family,
      String letter,
      String chipColorHex,
      int sunNeeds,
      int waterNeeds,
      int spaceNeeds,
      List<String> goodNeighborIds,
      List<String> badNeighborIds,
      List<String> tags,
      String? rotationBefore,
      String? rotationAfter});
}

/// @nodoc
class _$PlantCopyWithImpl<$Res, $Val extends Plant>
    implements $PlantCopyWith<$Res> {
  _$PlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Plant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nameLatin = null,
    Object? family = null,
    Object? letter = null,
    Object? chipColorHex = null,
    Object? sunNeeds = null,
    Object? waterNeeds = null,
    Object? spaceNeeds = null,
    Object? goodNeighborIds = null,
    Object? badNeighborIds = null,
    Object? tags = null,
    Object? rotationBefore = freezed,
    Object? rotationAfter = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameLatin: null == nameLatin
          ? _value.nameLatin
          : nameLatin // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      letter: null == letter
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String,
      chipColorHex: null == chipColorHex
          ? _value.chipColorHex
          : chipColorHex // ignore: cast_nullable_to_non_nullable
              as String,
      sunNeeds: null == sunNeeds
          ? _value.sunNeeds
          : sunNeeds // ignore: cast_nullable_to_non_nullable
              as int,
      waterNeeds: null == waterNeeds
          ? _value.waterNeeds
          : waterNeeds // ignore: cast_nullable_to_non_nullable
              as int,
      spaceNeeds: null == spaceNeeds
          ? _value.spaceNeeds
          : spaceNeeds // ignore: cast_nullable_to_non_nullable
              as int,
      goodNeighborIds: null == goodNeighborIds
          ? _value.goodNeighborIds
          : goodNeighborIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      badNeighborIds: null == badNeighborIds
          ? _value.badNeighborIds
          : badNeighborIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rotationBefore: freezed == rotationBefore
          ? _value.rotationBefore
          : rotationBefore // ignore: cast_nullable_to_non_nullable
              as String?,
      rotationAfter: freezed == rotationAfter
          ? _value.rotationAfter
          : rotationAfter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlantImplCopyWith<$Res> implements $PlantCopyWith<$Res> {
  factory _$$PlantImplCopyWith(
          _$PlantImpl value, $Res Function(_$PlantImpl) then) =
      __$$PlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String nameLatin,
      String family,
      String letter,
      String chipColorHex,
      int sunNeeds,
      int waterNeeds,
      int spaceNeeds,
      List<String> goodNeighborIds,
      List<String> badNeighborIds,
      List<String> tags,
      String? rotationBefore,
      String? rotationAfter});
}

/// @nodoc
class __$$PlantImplCopyWithImpl<$Res>
    extends _$PlantCopyWithImpl<$Res, _$PlantImpl>
    implements _$$PlantImplCopyWith<$Res> {
  __$$PlantImplCopyWithImpl(
      _$PlantImpl _value, $Res Function(_$PlantImpl) _then)
      : super(_value, _then);

  /// Create a copy of Plant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nameLatin = null,
    Object? family = null,
    Object? letter = null,
    Object? chipColorHex = null,
    Object? sunNeeds = null,
    Object? waterNeeds = null,
    Object? spaceNeeds = null,
    Object? goodNeighborIds = null,
    Object? badNeighborIds = null,
    Object? tags = null,
    Object? rotationBefore = freezed,
    Object? rotationAfter = freezed,
  }) {
    return _then(_$PlantImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameLatin: null == nameLatin
          ? _value.nameLatin
          : nameLatin // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      letter: null == letter
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String,
      chipColorHex: null == chipColorHex
          ? _value.chipColorHex
          : chipColorHex // ignore: cast_nullable_to_non_nullable
              as String,
      sunNeeds: null == sunNeeds
          ? _value.sunNeeds
          : sunNeeds // ignore: cast_nullable_to_non_nullable
              as int,
      waterNeeds: null == waterNeeds
          ? _value.waterNeeds
          : waterNeeds // ignore: cast_nullable_to_non_nullable
              as int,
      spaceNeeds: null == spaceNeeds
          ? _value.spaceNeeds
          : spaceNeeds // ignore: cast_nullable_to_non_nullable
              as int,
      goodNeighborIds: null == goodNeighborIds
          ? _value._goodNeighborIds
          : goodNeighborIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      badNeighborIds: null == badNeighborIds
          ? _value._badNeighborIds
          : badNeighborIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rotationBefore: freezed == rotationBefore
          ? _value.rotationBefore
          : rotationBefore // ignore: cast_nullable_to_non_nullable
              as String?,
      rotationAfter: freezed == rotationAfter
          ? _value.rotationAfter
          : rotationAfter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlantImpl extends _Plant {
  const _$PlantImpl(
      {required this.id,
      required this.name,
      required this.nameLatin,
      required this.family,
      required this.letter,
      required this.chipColorHex,
      required this.sunNeeds,
      required this.waterNeeds,
      required this.spaceNeeds,
      final List<String> goodNeighborIds = const [],
      final List<String> badNeighborIds = const [],
      final List<String> tags = const [],
      this.rotationBefore,
      this.rotationAfter})
      : _goodNeighborIds = goodNeighborIds,
        _badNeighborIds = badNeighborIds,
        _tags = tags,
        super._();

  factory _$PlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlantImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String nameLatin;
  @override
  final String family;
  @override
  final String letter;
  @override
  final String chipColorHex;
// e.g. '#7DB57E' — matches PLANTS map in screens-shared.jsx
  @override
  final int sunNeeds;
// 1–3
  @override
  final int waterNeeds;
// 1–3
  @override
  final int spaceNeeds;
// 1–3
  final List<String> _goodNeighborIds;
// 1–3
  @override
  @JsonKey()
  List<String> get goodNeighborIds {
    if (_goodNeighborIds is EqualUnmodifiableListView) return _goodNeighborIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goodNeighborIds);
  }

  final List<String> _badNeighborIds;
  @override
  @JsonKey()
  List<String> get badNeighborIds {
    if (_badNeighborIds is EqualUnmodifiableListView) return _badNeighborIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badNeighborIds);
  }

  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? rotationBefore;
  @override
  final String? rotationAfter;

  @override
  String toString() {
    return 'Plant(id: $id, name: $name, nameLatin: $nameLatin, family: $family, letter: $letter, chipColorHex: $chipColorHex, sunNeeds: $sunNeeds, waterNeeds: $waterNeeds, spaceNeeds: $spaceNeeds, goodNeighborIds: $goodNeighborIds, badNeighborIds: $badNeighborIds, tags: $tags, rotationBefore: $rotationBefore, rotationAfter: $rotationAfter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameLatin, nameLatin) ||
                other.nameLatin == nameLatin) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.letter, letter) || other.letter == letter) &&
            (identical(other.chipColorHex, chipColorHex) ||
                other.chipColorHex == chipColorHex) &&
            (identical(other.sunNeeds, sunNeeds) ||
                other.sunNeeds == sunNeeds) &&
            (identical(other.waterNeeds, waterNeeds) ||
                other.waterNeeds == waterNeeds) &&
            (identical(other.spaceNeeds, spaceNeeds) ||
                other.spaceNeeds == spaceNeeds) &&
            const DeepCollectionEquality()
                .equals(other._goodNeighborIds, _goodNeighborIds) &&
            const DeepCollectionEquality()
                .equals(other._badNeighborIds, _badNeighborIds) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.rotationBefore, rotationBefore) ||
                other.rotationBefore == rotationBefore) &&
            (identical(other.rotationAfter, rotationAfter) ||
                other.rotationAfter == rotationAfter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      nameLatin,
      family,
      letter,
      chipColorHex,
      sunNeeds,
      waterNeeds,
      spaceNeeds,
      const DeepCollectionEquality().hash(_goodNeighborIds),
      const DeepCollectionEquality().hash(_badNeighborIds),
      const DeepCollectionEquality().hash(_tags),
      rotationBefore,
      rotationAfter);

  /// Create a copy of Plant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlantImplCopyWith<_$PlantImpl> get copyWith =>
      __$$PlantImplCopyWithImpl<_$PlantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlantImplToJson(
      this,
    );
  }
}

abstract class _Plant extends Plant {
  const factory _Plant(
      {required final String id,
      required final String name,
      required final String nameLatin,
      required final String family,
      required final String letter,
      required final String chipColorHex,
      required final int sunNeeds,
      required final int waterNeeds,
      required final int spaceNeeds,
      final List<String> goodNeighborIds,
      final List<String> badNeighborIds,
      final List<String> tags,
      final String? rotationBefore,
      final String? rotationAfter}) = _$PlantImpl;
  const _Plant._() : super._();

  factory _Plant.fromJson(Map<String, dynamic> json) = _$PlantImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get nameLatin;
  @override
  String get family;
  @override
  String get letter;
  @override
  String
      get chipColorHex; // e.g. '#7DB57E' — matches PLANTS map in screens-shared.jsx
  @override
  int get sunNeeds; // 1–3
  @override
  int get waterNeeds; // 1–3
  @override
  int get spaceNeeds; // 1–3
  @override
  List<String> get goodNeighborIds;
  @override
  List<String> get badNeighborIds;
  @override
  List<String> get tags;
  @override
  String? get rotationBefore;
  @override
  String? get rotationAfter;

  /// Create a copy of Plant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlantImplCopyWith<_$PlantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
