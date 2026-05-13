// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Relationship _$RelationshipFromJson(Map<String, dynamic> json) =>
    _Relationship(
      speciesAId: json['species_a_id'] as String,
      speciesBId: json['species_b_id'] as String,
      weight: (json['weight'] as num).toInt(),
      type: $enumDecode(_$RelationshipTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$RelationshipToJson(_Relationship instance) =>
    <String, dynamic>{
      'species_a_id': instance.speciesAId,
      'species_b_id': instance.speciesBId,
      'weight': instance.weight,
      'type': _$RelationshipTypeEnumMap[instance.type]!,
    };

const _$RelationshipTypeEnumMap = {
  RelationshipType.symbiosis: 'symbiosis',
  RelationshipType.competition: 'competition',
  RelationshipType.support: 'support',
  RelationshipType.neutral: 'neutral',
};
