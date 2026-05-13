// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crop_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CropHistory {

 String get id; String get fieldId; int get cellIndex; String get speciesId; int get year; bool get diseaseLogged; String? get diseaseNote;
/// Create a copy of CropHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CropHistoryCopyWith<CropHistory> get copyWith => _$CropHistoryCopyWithImpl<CropHistory>(this as CropHistory, _$identity);

  /// Serializes this CropHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CropHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.cellIndex, cellIndex) || other.cellIndex == cellIndex)&&(identical(other.speciesId, speciesId) || other.speciesId == speciesId)&&(identical(other.year, year) || other.year == year)&&(identical(other.diseaseLogged, diseaseLogged) || other.diseaseLogged == diseaseLogged)&&(identical(other.diseaseNote, diseaseNote) || other.diseaseNote == diseaseNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fieldId,cellIndex,speciesId,year,diseaseLogged,diseaseNote);

@override
String toString() {
  return 'CropHistory(id: $id, fieldId: $fieldId, cellIndex: $cellIndex, speciesId: $speciesId, year: $year, diseaseLogged: $diseaseLogged, diseaseNote: $diseaseNote)';
}


}

/// @nodoc
abstract mixin class $CropHistoryCopyWith<$Res>  {
  factory $CropHistoryCopyWith(CropHistory value, $Res Function(CropHistory) _then) = _$CropHistoryCopyWithImpl;
@useResult
$Res call({
 String id, String fieldId, int cellIndex, String speciesId, int year, bool diseaseLogged, String? diseaseNote
});




}
/// @nodoc
class _$CropHistoryCopyWithImpl<$Res>
    implements $CropHistoryCopyWith<$Res> {
  _$CropHistoryCopyWithImpl(this._self, this._then);

  final CropHistory _self;
  final $Res Function(CropHistory) _then;

/// Create a copy of CropHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fieldId = null,Object? cellIndex = null,Object? speciesId = null,Object? year = null,Object? diseaseLogged = null,Object? diseaseNote = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,cellIndex: null == cellIndex ? _self.cellIndex : cellIndex // ignore: cast_nullable_to_non_nullable
as int,speciesId: null == speciesId ? _self.speciesId : speciesId // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,diseaseLogged: null == diseaseLogged ? _self.diseaseLogged : diseaseLogged // ignore: cast_nullable_to_non_nullable
as bool,diseaseNote: freezed == diseaseNote ? _self.diseaseNote : diseaseNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CropHistory].
extension CropHistoryPatterns on CropHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CropHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CropHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CropHistory value)  $default,){
final _that = this;
switch (_that) {
case _CropHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CropHistory value)?  $default,){
final _that = this;
switch (_that) {
case _CropHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fieldId,  int cellIndex,  String speciesId,  int year,  bool diseaseLogged,  String? diseaseNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CropHistory() when $default != null:
return $default(_that.id,_that.fieldId,_that.cellIndex,_that.speciesId,_that.year,_that.diseaseLogged,_that.diseaseNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fieldId,  int cellIndex,  String speciesId,  int year,  bool diseaseLogged,  String? diseaseNote)  $default,) {final _that = this;
switch (_that) {
case _CropHistory():
return $default(_that.id,_that.fieldId,_that.cellIndex,_that.speciesId,_that.year,_that.diseaseLogged,_that.diseaseNote);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fieldId,  int cellIndex,  String speciesId,  int year,  bool diseaseLogged,  String? diseaseNote)?  $default,) {final _that = this;
switch (_that) {
case _CropHistory() when $default != null:
return $default(_that.id,_that.fieldId,_that.cellIndex,_that.speciesId,_that.year,_that.diseaseLogged,_that.diseaseNote);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CropHistory implements CropHistory {
  const _CropHistory({required this.id, required this.fieldId, required this.cellIndex, required this.speciesId, required this.year, this.diseaseLogged = false, this.diseaseNote});
  factory _CropHistory.fromJson(Map<String, dynamic> json) => _$CropHistoryFromJson(json);

@override final  String id;
@override final  String fieldId;
@override final  int cellIndex;
@override final  String speciesId;
@override final  int year;
@override@JsonKey() final  bool diseaseLogged;
@override final  String? diseaseNote;

/// Create a copy of CropHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CropHistoryCopyWith<_CropHistory> get copyWith => __$CropHistoryCopyWithImpl<_CropHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CropHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CropHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.fieldId, fieldId) || other.fieldId == fieldId)&&(identical(other.cellIndex, cellIndex) || other.cellIndex == cellIndex)&&(identical(other.speciesId, speciesId) || other.speciesId == speciesId)&&(identical(other.year, year) || other.year == year)&&(identical(other.diseaseLogged, diseaseLogged) || other.diseaseLogged == diseaseLogged)&&(identical(other.diseaseNote, diseaseNote) || other.diseaseNote == diseaseNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fieldId,cellIndex,speciesId,year,diseaseLogged,diseaseNote);

@override
String toString() {
  return 'CropHistory(id: $id, fieldId: $fieldId, cellIndex: $cellIndex, speciesId: $speciesId, year: $year, diseaseLogged: $diseaseLogged, diseaseNote: $diseaseNote)';
}


}

/// @nodoc
abstract mixin class _$CropHistoryCopyWith<$Res> implements $CropHistoryCopyWith<$Res> {
  factory _$CropHistoryCopyWith(_CropHistory value, $Res Function(_CropHistory) _then) = __$CropHistoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String fieldId, int cellIndex, String speciesId, int year, bool diseaseLogged, String? diseaseNote
});




}
/// @nodoc
class __$CropHistoryCopyWithImpl<$Res>
    implements _$CropHistoryCopyWith<$Res> {
  __$CropHistoryCopyWithImpl(this._self, this._then);

  final _CropHistory _self;
  final $Res Function(_CropHistory) _then;

/// Create a copy of CropHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fieldId = null,Object? cellIndex = null,Object? speciesId = null,Object? year = null,Object? diseaseLogged = null,Object? diseaseNote = freezed,}) {
  return _then(_CropHistory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fieldId: null == fieldId ? _self.fieldId : fieldId // ignore: cast_nullable_to_non_nullable
as String,cellIndex: null == cellIndex ? _self.cellIndex : cellIndex // ignore: cast_nullable_to_non_nullable
as int,speciesId: null == speciesId ? _self.speciesId : speciesId // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,diseaseLogged: null == diseaseLogged ? _self.diseaseLogged : diseaseLogged // ignore: cast_nullable_to_non_nullable
as bool,diseaseNote: freezed == diseaseNote ? _self.diseaseNote : diseaseNote // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
