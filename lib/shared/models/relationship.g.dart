// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Relationship _$RelationshipFromJson(Map<String, dynamic> json) =>
    _Relationship(
      speciesAId: json['speciesAId'] as String,
      speciesBId: json['speciesBId'] as String,
      weight: (json['weight'] as num).toInt(),
      type: $enumDecode(_$RelationshipTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$RelationshipToJson(_Relationship instance) =>
    <String, dynamic>{
      'speciesAId': instance.speciesAId,
      'speciesBId': instance.speciesBId,
      'weight': instance.weight,
      'type': _$RelationshipTypeEnumMap[instance.type]!,
    };

const _$RelationshipTypeEnumMap = {
  RelationshipType.symbiosis: 'symbiosis',
  RelationshipType.competition: 'competition',
  RelationshipType.support: 'support',
  RelationshipType.neutral: 'neutral',
};
