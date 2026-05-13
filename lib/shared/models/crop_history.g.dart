// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CropHistory _$CropHistoryFromJson(Map<String, dynamic> json) => _CropHistory(
  id: json['id'] as String,
  fieldId: json['field_id'] as String,
  cellIndex: (json['cell_index'] as num).toInt(),
  speciesId: json['species_id'] as String,
  year: (json['year'] as num).toInt(),
  diseaseLogged: json['disease_logged'] as bool? ?? false,
  diseaseNote: json['disease_note'] as String?,
);

Map<String, dynamic> _$CropHistoryToJson(_CropHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'field_id': instance.fieldId,
      'cell_index': instance.cellIndex,
      'species_id': instance.speciesId,
      'year': instance.year,
      'disease_logged': instance.diseaseLogged,
      'disease_note': instance.diseaseNote,
    };
