// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Plant _$PlantFromJson(Map<String, dynamic> json) => _Plant(
  id: json['id'] as String,
  name: json['name'] as String,
  nameLatin: json['name_latin'] as String,
  family: json['family'] as String,
  letter: json['letter'] as String,
  chipColorHex: json['chip_color_hex'] as String,
  sunNeeds: (json['sun_needs'] as num).toInt(),
  waterNeeds: (json['water_needs'] as num).toInt(),
  spaceNeeds: (json['space_needs'] as num).toInt(),
  goodNeighborIds:
      (json['good_neighbor_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  badNeighborIds:
      (json['bad_neighbor_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  rotationBefore: json['rotation_before'] as String?,
  rotationAfter: json['rotation_after'] as String?,
);

Map<String, dynamic> _$PlantToJson(_Plant instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'name_latin': instance.nameLatin,
  'family': instance.family,
  'letter': instance.letter,
  'chip_color_hex': instance.chipColorHex,
  'sun_needs': instance.sunNeeds,
  'water_needs': instance.waterNeeds,
  'space_needs': instance.spaceNeeds,
  'good_neighbor_ids': instance.goodNeighborIds,
  'bad_neighbor_ids': instance.badNeighborIds,
  'tags': instance.tags,
  'rotation_before': instance.rotationBefore,
  'rotation_after': instance.rotationAfter,
};
