// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Field _$FieldFromJson(Map<String, dynamic> json) => _Field(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  name: json['name'] as String,
  cols: (json['cols'] as num).toInt(),
  rows: (json['rows'] as num).toInt(),
  cellSizeCm: (json['cell_size_cm'] as num).toInt(),
  shapeMask:
      (json['shape_mask'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
);

Map<String, dynamic> _$FieldToJson(_Field instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'name': instance.name,
  'cols': instance.cols,
  'rows': instance.rows,
  'cell_size_cm': instance.cellSizeCm,
  'shape_mask': instance.shapeMask,
};
