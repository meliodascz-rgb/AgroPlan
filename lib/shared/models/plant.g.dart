// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Plant _$PlantFromJson(Map<String, dynamic> json) => _Plant(
  id: json['id'] as String,
  name: json['name'] as String,
  nameLatin: json['nameLatin'] as String,
  family: json['family'] as String,
  letter: json['letter'] as String,
  chipColorHex: json['chipColorHex'] as String,
  sunNeeds: (json['sunNeeds'] as num).toInt(),
  waterNeeds: (json['waterNeeds'] as num).toInt(),
  spaceNeeds: (json['spaceNeeds'] as num).toInt(),
  goodNeighborIds:
      (json['goodNeighborIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  badNeighborIds:
      (json['badNeighborIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  rotationBefore: json['rotationBefore'] as String?,
  rotationAfter: json['rotationAfter'] as String?,
);

Map<String, dynamic> _$PlantToJson(_Plant instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'nameLatin': instance.nameLatin,
  'family': instance.family,
  'letter': instance.letter,
  'chipColorHex': instance.chipColorHex,
  'sunNeeds': instance.sunNeeds,
  'waterNeeds': instance.waterNeeds,
  'spaceNeeds': instance.spaceNeeds,
  'goodNeighborIds': instance.goodNeighborIds,
  'badNeighborIds': instance.badNeighborIds,
  'tags': instance.tags,
  'rotationBefore': instance.rotationBefore,
  'rotationAfter': instance.rotationAfter,
};
