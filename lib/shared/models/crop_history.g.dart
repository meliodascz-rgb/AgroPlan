// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CropHistory _$CropHistoryFromJson(Map<String, dynamic> json) => _CropHistory(
  id: json['id'] as String,
  fieldId: json['fieldId'] as String,
  cellIndex: (json['cellIndex'] as num).toInt(),
  plantId: json['plantId'] as String,
  year: (json['year'] as num).toInt(),
  diseaseLogged: json['diseaseLogged'] as bool? ?? false,
  diseaseNote: json['diseaseNote'] as String?,
);

Map<String, dynamic> _$CropHistoryToJson(_CropHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fieldId': instance.fieldId,
      'cellIndex': instance.cellIndex,
      'plantId': instance.plantId,
      'year': instance.year,
      'diseaseLogged': instance.diseaseLogged,
      'diseaseNote': instance.diseaseNote,
    };
