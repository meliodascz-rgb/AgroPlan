// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CropHistoryImpl _$$CropHistoryImplFromJson(Map<String, dynamic> json) =>
    _$CropHistoryImpl(
      id: json['id'] as String,
      fieldId: json['fieldId'] as String,
      cellIndex: (json['cellIndex'] as num).toInt(),
      plantId: json['plantId'] as String,
      year: (json['year'] as num).toInt(),
      diseaseLogged: json['diseaseLogged'] as bool? ?? false,
      diseaseNote: json['diseaseNote'] as String?,
    );

Map<String, dynamic> _$$CropHistoryImplToJson(_$CropHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fieldId': instance.fieldId,
      'cellIndex': instance.cellIndex,
      'plantId': instance.plantId,
      'year': instance.year,
      'diseaseLogged': instance.diseaseLogged,
      'diseaseNote': instance.diseaseNote,
    };
