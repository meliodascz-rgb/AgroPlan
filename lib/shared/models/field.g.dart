// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Field _$FieldFromJson(Map<String, dynamic> json) => _Field(
  id: json['id'] as String,
  userId: json['userId'] as String,
  name: json['name'] as String,
  cols: (json['cols'] as num).toInt(),
  rows: (json['rows'] as num).toInt(),
  cellSizeCm: (json['cellSizeCm'] as num).toInt(),
  shapeMask:
      (json['shapeMask'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
);

Map<String, dynamic> _$FieldToJson(_Field instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'name': instance.name,
  'cols': instance.cols,
  'rows': instance.rows,
  'cellSizeCm': instance.cellSizeCm,
  'shapeMask': instance.shapeMask,
};
