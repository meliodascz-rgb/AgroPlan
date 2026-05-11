// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlacementImpl _$$PlacementImplFromJson(Map<String, dynamic> json) =>
    _$PlacementImpl(
      id: json['id'] as String,
      fieldId: json['fieldId'] as String,
      cellIndex: (json['cellIndex'] as num).toInt(),
      plantId: json['plantId'] as String,
      year: (json['year'] as num).toInt(),
      season: $enumDecode(_$SeasonEnumMap, json['season']),
    );

Map<String, dynamic> _$$PlacementImplToJson(_$PlacementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fieldId': instance.fieldId,
      'cellIndex': instance.cellIndex,
      'plantId': instance.plantId,
      'year': instance.year,
      'season': _$SeasonEnumMap[instance.season]!,
    };

const _$SeasonEnumMap = {
  Season.spring: 'spring',
  Season.autumn: 'autumn',
};
