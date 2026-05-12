// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'placement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Placement {

 String get id; String get fieldId; int get cellIndex; String get plantId; int get year; Season get season;
/// Create a copy of Placement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementCopyWith<Placement> get copyWith => _$PlacementCopyWithImpl<Placement>(this as Placement, _$identity);

  /// Serializes this Placement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Placement&&(identical(other.id, id) || other.id == id)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.cellIndex, cellIndex) || other.cellIndex == cellIndex)&&(identical(other.plantId, plantId) || other.plantId == plantId)&&(identical(other.year, year) || other.year == year)&&(identical(other.season, season) || other.season == season));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fieldId,cellIndex,plantId,year,season);

@override
String toString() {
  return 'Placement(id: $id, fieldId: $fieldId, cellIndex: $cellIndex, plantId: $plantId, year: $year, season: $season)';
}


}

/// @nodoc
abstract mixin class $PlacementCopyWith<$Res>  {
  factory $PlacementCopyWith(Placement value, $Res Function(Placement) _then) = _$PlacementCopyWithImpl;
@useResult
$Res call({
 String id, String fieldId, int cellIndex, String plantId, int year, Season season
});




}
/// @nodoc
class _$PlacementCopyWithImpl<$Res>
    implements $PlacementCopyWith<$Res> {
  _$PlacementCopyWithImpl(this._self, this._then);

  final Placement _self;
  final $Res Function(Placement) _then;

/// Create a copy of Placement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fieldId = null,Object? cellIndex = null,Object? plantId = null,Object? year = null,Object? season = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,cellIndex: null == cellIndex ? _self.cellIndex : cellIndex // ignore: cast_nullable_to_non_nullable
as int,plantId: null == plantId ? _self.plantId : plantId // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,season: null == season ? _self.season : season // ignore: cast_nullable_to_non_nullable
as Season,
  ));
}

}


/// Adds pattern-matching-related methods to [Placement].
extension PlacementPatterns on Placement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Placement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Placement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Placement value)  $default,){
final _that = this;
switch (_that) {
case _Placement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Placement value)?  $default,){
final _that = this;
switch (_that) {
case _Placement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fieldId,  int cellIndex,  String plantId,  int year,  Season season)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Placement() when $default != null:
return $default(_that.id,_that.fieldId,_that.cellIndex,_that.plantId,_that.year,_that.season);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fieldId,  int cellIndex,  String plantId,  int year,  Season season)  $default,) {final _that = this;
switch (_that) {
case _Placement():
return $default(_that.id,_that.fieldId,_that.cellIndex,_that.plantId,_that.year,_that.season);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fieldId,  int cellIndex,  String plantId,  int year,  Season season)?  $default,) {final _that = this;
switch (_that) {
case _Placement() when $default != null:
return $default(_that.id,_that.fieldId,_that.cellIndex,_that.plantId,_that.year,_that.season);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Placement implements Placement {
  const _Placement({required this.id, required this.fieldId, required this.cellIndex, required this.plantId, required this.year, required this.season});
  factory _Placement.fromJson(Map<String, dynamic> json) => _$PlacementFromJson(json);

@override final  String id;
@override final  String fieldId;
@override final  int cellIndex;
@override final  String plantId;
@override final  int year;
@override final  Season season;

/// Create a copy of Placement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementCopyWith<_Placement> get copyWith => __$PlacementCopyWithImpl<_Placement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacementToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Placement&&(identical(other.id, id) || other.id == id)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.cellIndex, cellIndex) || other.cellIndex == cellIndex)&&(identical(other.plantId, plantId) || other.plantId == plantId)&&(identical(other.year, year) || other.year == year)&&(identical(other.season, season) || other.season == season));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fieldId,cellIndex,plantId,year,season);

@override
String toString() {
  return 'Placement(id: $id, fieldId: $fieldId, cellIndex: $cellIndex, plantId: $plantId, year: $year, season: $season)';
}


}

/// @nodoc
abstract mixin class _$PlacementCopyWith<$Res> implements $PlacementCopyWith<$Res> {
  factory _$PlacementCopyWith(_Placement value, $Res Function(_Placement) _then) = __$PlacementCopyWithImpl;
@override @useResult
$Res call({
 String id, String fieldId, int cellIndex, String plantId, int year, Season season
});




}
/// @nodoc
class __$PlacementCopyWithImpl<$Res>
    implements _$PlacementCopyWith<$Res> {
  __$PlacementCopyWithImpl(this._self, this._then);

  final _Placement _self;
  final $Res Function(_Placement) _then;

/// Create a copy of Placement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fieldId = null,Object? cellIndex = null,Object? plantId = null,Object? year = null,Object? season = null,}) {
  return _then(_Placement(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,cellIndex: null == cellIndex ? _self.cellIndex : cellIndex // ignore: cast_nullable_to_non_nullable
as int,plantId: null == plantId ? _self.plantId : plantId // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,season: null == season ? _self.season : season // ignore: cast_nullable_to_non_nullable
as Season,
  ));
}


}

// dart format on
