// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Placement _$PlacementFromJson(Map<String, dynamic> json) => _Placement(
  id: json['id'] as String,
  fieldId: json['field_id'] as String,
  cellIndex: (json['cell_index'] as num).toInt(),
  speciesId: json['species_id'] as String,
  year: (json['year'] as num).toInt(),
  season: $enumDecode(_$SeasonEnumMap, json['season']),
);

Map<String, dynamic> _$PlacementToJson(_Placement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'field_id': instance.fieldId,
      'cell_index': instance.cellIndex,
      'species_id': instance.speciesId,
      'year': instance.year,
      'season': _$SeasonEnumMap[instance.season]!,
    };

const _$SeasonEnumMap = {Season.spring: 'spring', Season.autumn: 'autumn'};
