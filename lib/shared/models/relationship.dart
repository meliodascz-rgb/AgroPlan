import 'package:freezed_annotation/freezed_annotation.dart';

part 'relationship.freezed.dart';
part 'relationship.g.dart';

enum RelationshipType { symbiosis, competition, support, neutral }

@freezed
abstract class Relationship with _$Relationship {
  const factory Relationship({
    required String speciesAId,
    required String speciesBId,
    required int weight,              // -10 … +10
    required RelationshipType type,
  }) = _Relationship;

  factory Relationship.fromJson(Map<String, dynamic> json) => _$RelationshipFromJson(json);
}
