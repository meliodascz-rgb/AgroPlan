// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Plant {

 String get id; String get name; String get nameLatin; String get family; String get letter; String get chipColorHex;// e.g. '#7DB57E' — matches PLANTS map in screens-shared.jsx
 int get sunNeeds;// 1–3
 int get waterNeeds;// 1–3
 int get spaceNeeds;// 1–3
 List<String> get goodNeighborIds; List<String> get badNeighborIds; List<String> get tags; String? get rotationBefore; String? get rotationAfter;
/// Create a copy of Plant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlantCopyWith<Plant> get copyWith => _$PlantCopyWithImpl<Plant>(this as Plant, _$identity);

  /// Serializes this Plant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Plant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameLatin, nameLatin) || other.nameLatin == nameLatin)&&(identical(other.family, family) || other.family == family)&&(identical(other.letter, letter) || other.letter == letter)&&(identical(other.chipColorHex, chipColorHex) || other.chipColorHex == chipColorHex)&&(identical(other.sunNeeds, sunNeeds) || other.sunNeeds == sunNeeds)&&(identical(other.waterNeeds, waterNeeds) || other.waterNeeds == waterNeeds)&&(identical(other.spaceNeeds, spaceNeeds) || other.spaceNeeds == spaceNeeds)&&const DeepCollectionEquality().equals(other.goodNeighborIds, goodNeighborIds)&&const DeepCollectionEquality().equals(other.badNeighborIds, badNeighborIds)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.rotationBefore, rotationBefore) || other.rotationBefore == rotationBefore)&&(identical(other.rotationAfter, rotationAfter) || other.rotationAfter == rotationAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameLatin,family,letter,chipColorHex,sunNeeds,waterNeeds,spaceNeeds,const DeepCollectionEquality().hash(goodNeighborIds),const DeepCollectionEquality().hash(badNeighborIds),const DeepCollectionEquality().hash(tags),rotationBefore,rotationAfter);

@override
String toString() {
  return 'Plant(id: $id, name: $name, nameLatin: $nameLatin, family: $family, letter: $letter, chipColorHex: $chipColorHex, sunNeeds: $sunNeeds, waterNeeds: $waterNeeds, spaceNeeds: $spaceNeeds, goodNeighborIds: $goodNeighborIds, badNeighborIds: $badNeighborIds, tags: $tags, rotationBefore: $rotationBefore, rotationAfter: $rotationAfter)';
}


}

/// @nodoc
abstract mixin class $PlantCopyWith<$Res>  {
  factory $PlantCopyWith(Plant value, $Res Function(Plant) _then) = _$PlantCopyWithImpl;
@useResult
$Res call({
 String id, String name, String nameLatin, String family, String letter, String chipColorHex, int sunNeeds, int waterNeeds, int spaceNeeds, List<String> goodNeighborIds, List<String> badNeighborIds, List<String> tags, String? rotationBefore, String? rotationAfter
});




}
/// @nodoc
class _$PlantCopyWithImpl<$Res>
    implements $PlantCopyWith<$Res> {
  _$PlantCopyWithImpl(this._self, this._then);

  final Plant _self;
  final $Res Function(Plant) _then;

/// Create a copy of Plant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameLatin = null,Object? family = null,Object? letter = null,Object? chipColorHex = null,Object? sunNeeds = null,Object? waterNeeds = null,Object? spaceNeeds = null,Object? goodNeighborIds = null,Object? badNeighborIds = null,Object? tags = null,Object? rotationBefore = freezed,Object? rotationAfter = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameLatin: null == nameLatin ? _self.nameLatin : nameLatin // ignore: cast_nullable_to_non_nullable
as String,family: null == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String,letter: null == letter ? _self.letter : letter // ignore: cast_nullable_to_non_nullable
as String,chipColorHex: null == chipColorHex ? _self.chipColorHex : chipColorHex // ignore: cast_nullable_to_non_nullable
as String,sunNeeds: null == sunNeeds ? _self.sunNeeds : sunNeeds // ignore: cast_nullable_to_non_nullable
as int,waterNeeds: null == waterNeeds ? _self.waterNeeds : waterNeeds // ignore: cast_nullable_to_non_nullable
as int,spaceNeeds: null == spaceNeeds ? _self.spaceNeeds : spaceNeeds // ignore: cast_nullable_to_non_nullable
as int,goodNeighborIds: null == goodNeighborIds ? _self.goodNeighborIds : goodNeighborIds // ignore: cast_nullable_to_non_nullable
as List<String>,badNeighborIds: null == badNeighborIds ? _self.badNeighborIds : badNeighborIds // ignore: cast_nullable_to_non_nullable
as List<String>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,rotationBefore: freezed == rotationBefore ? _self.rotationBefore : rotationBefore // ignore: cast_nullable_to_non_nullable
as String?,rotationAfter: freezed == rotationAfter ? _self.rotationAfter : rotationAfter // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Plant].
extension PlantPatterns on Plant {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Plant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Plant() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Plant value)  $default,){
final _that = this;
switch (_that) {
case _Plant():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Plant value)?  $default,){
final _that = this;
switch (_that) {
case _Plant() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String nameLatin,  String family,  String letter,  String chipColorHex,  int sunNeeds,  int waterNeeds,  int spaceNeeds,  List<String> goodNeighborIds,  List<String> badNeighborIds,  List<String> tags,  String? rotationBefore,  String? rotationAfter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Plant() when $default != null:
return $default(_that.id,_that.name,_that.nameLatin,_that.family,_that.letter,_that.chipColorHex,_that.sunNeeds,_that.waterNeeds,_that.spaceNeeds,_that.goodNeighborIds,_that.badNeighborIds,_that.tags,_that.rotationBefore,_that.rotationAfter);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String nameLatin,  String family,  String letter,  String chipColorHex,  int sunNeeds,  int waterNeeds,  int spaceNeeds,  List<String> goodNeighborIds,  List<String> badNeighborIds,  List<String> tags,  String? rotationBefore,  String? rotationAfter)  $default,) {final _that = this;
switch (_that) {
case _Plant():
return $default(_that.id,_that.name,_that.nameLatin,_that.family,_that.letter,_that.chipColorHex,_that.sunNeeds,_that.waterNeeds,_that.spaceNeeds,_that.goodNeighborIds,_that.badNeighborIds,_that.tags,_that.rotationBefore,_that.rotationAfter);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String nameLatin,  String family,  String letter,  String chipColorHex,  int sunNeeds,  int waterNeeds,  int spaceNeeds,  List<String> goodNeighborIds,  List<String> badNeighborIds,  List<String> tags,  String? rotationBefore,  String? rotationAfter)?  $default,) {final _that = this;
switch (_that) {
case _Plant() when $default != null:
return $default(_that.id,_that.name,_that.nameLatin,_that.family,_that.letter,_that.chipColorHex,_that.sunNeeds,_that.waterNeeds,_that.spaceNeeds,_that.goodNeighborIds,_that.badNeighborIds,_that.tags,_that.rotationBefore,_that.rotationAfter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Plant extends Plant {
  const _Plant({required this.id, required this.name, required this.nameLatin, required this.family, required this.letter, required this.chipColorHex, required this.sunNeeds, required this.waterNeeds, required this.spaceNeeds, final  List<String> goodNeighborIds = const [], final  List<String> badNeighborIds = const [], final  List<String> tags = const [], this.rotationBefore, this.rotationAfter}): _goodNeighborIds = goodNeighborIds,_badNeighborIds = badNeighborIds,_tags = tags,super._();
  factory _Plant.fromJson(Map<String, dynamic> json) => _$PlantFromJson(json);

@override final  String id;
@override final  String name;
@override final  String nameLatin;
@override final  String family;
@override final  String letter;
@override final  String chipColorHex;
// e.g. '#7DB57E' — matches PLANTS map in screens-shared.jsx
@override final  int sunNeeds;
// 1–3
@override final  int waterNeeds;
// 1–3
@override final  int spaceNeeds;
// 1–3
 final  List<String> _goodNeighborIds;
// 1–3
@override@JsonKey() List<String> get goodNeighborIds {
  if (_goodNeighborIds is EqualUnmodifiableListView) return _goodNeighborIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_goodNeighborIds);
}

 final  List<String> _badNeighborIds;
@override@JsonKey() List<String> get badNeighborIds {
  if (_badNeighborIds is EqualUnmodifiableListView) return _badNeighborIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_badNeighborIds);
}

 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  String? rotationBefore;
@override final  String? rotationAfter;

/// Create a copy of Plant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlantCopyWith<_Plant> get copyWith => __$PlantCopyWithImpl<_Plant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Plant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameLatin, nameLatin) || other.nameLatin == nameLatin)&&(identical(other.family, family) || other.family == family)&&(identical(other.letter, letter) || other.letter == letter)&&(identical(other.chipColorHex, chipColorHex) || other.chipColorHex == chipColorHex)&&(identical(other.sunNeeds, sunNeeds) || other.sunNeeds == sunNeeds)&&(identical(other.waterNeeds, waterNeeds) || other.waterNeeds == waterNeeds)&&(identical(other.spaceNeeds, spaceNeeds) || other.spaceNeeds == spaceNeeds)&&const DeepCollectionEquality().equals(other._goodNeighborIds, _goodNeighborIds)&&const DeepCollectionEquality().equals(other._badNeighborIds, _badNeighborIds)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.rotationBefore, rotationBefore) || other.rotationBefore == rotationBefore)&&(identical(other.rotationAfter, rotationAfter) || other.rotationAfter == rotationAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameLatin,family,letter,chipColorHex,sunNeeds,waterNeeds,spaceNeeds,const DeepCollectionEquality().hash(_goodNeighborIds),const DeepCollectionEquality().hash(_badNeighborIds),const DeepCollectionEquality().hash(_tags),rotationBefore,rotationAfter);

@override
String toString() {
  return 'Plant(id: $id, name: $name, nameLatin: $nameLatin, family: $family, letter: $letter, chipColorHex: $chipColorHex, sunNeeds: $sunNeeds, waterNeeds: $waterNeeds, spaceNeeds: $spaceNeeds, goodNeighborIds: $goodNeighborIds, badNeighborIds: $badNeighborIds, tags: $tags, rotationBefore: $rotationBefore, rotationAfter: $rotationAfter)';
}


}

/// @nodoc
abstract mixin class _$PlantCopyWith<$Res> implements $PlantCopyWith<$Res> {
  factory _$PlantCopyWith(_Plant value, $Res Function(_Plant) _then) = __$PlantCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String nameLatin, String family, String letter, String chipColorHex, int sunNeeds, int waterNeeds, int spaceNeeds, List<String> goodNeighborIds, List<String> badNeighborIds, List<String> tags, String? rotationBefore, String? rotationAfter
});




}
/// @nodoc
class __$PlantCopyWithImpl<$Res>
    implements _$PlantCopyWith<$Res> {
  __$PlantCopyWithImpl(this._self, this._then);

  final _Plant _self;
  final $Res Function(_Plant) _then;

/// Create a copy of Plant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameLatin = null,Object? family = null,Object? letter = null,Object? chipColorHex = null,Object? sunNeeds = null,Object? waterNeeds = null,Object? spaceNeeds = null,Object? goodNeighborIds = null,Object? badNeighborIds = null,Object? tags = null,Object? rotationBefore = freezed,Object? rotationAfter = freezed,}) {
  return _then(_Plant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameLatin: null == nameLatin ? _self.nameLatin : nameLatin // ignore: cast_nullable_to_non_nullable
as String,family: null == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as String,letter: null == letter ? _self.letter : letter // ignore: cast_nullable_to_non_nullable
as String,chipColorHex: null == chipColorHex ? _self.chipColorHex : chipColorHex // ignore: cast_nullable_to_non_nullable
as String,sunNeeds: null == sunNeeds ? _self.sunNeeds : sunNeeds // ignore: cast_nullable_to_non_nullable
as int,waterNeeds: null == waterNeeds ? _self.waterNeeds : waterNeeds // ignore: cast_nullable_to_non_nullable
as int,spaceNeeds: null == spaceNeeds ? _self.spaceNeeds : spaceNeeds // ignore: cast_nullable_to_non_nullable
as int,goodNeighborIds: null == goodNeighborIds ? _self._goodNeighborIds : goodNeighborIds // ignore: cast_nullable_to_non_nullable
as List<String>,badNeighborIds: null == badNeighborIds ? _self._badNeighborIds : badNeighborIds // ignore: cast_nullable_to_non_nullable
as List<String>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,rotationBefore: freezed == rotationBefore ? _self.rotationBefore : rotationBefore // ignore: cast_nullable_to_non_nullable
as String?,rotationAfter: freezed == rotationAfter ? _self.rotationAfter : rotationAfter // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
