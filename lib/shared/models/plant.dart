import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'plant.freezed.dart';
part 'plant.g.dart';

@freezed
abstract class Plant with _$Plant {
  const Plant._(); // required for custom getters with freezed

  const factory Plant({
    required String id,
    required String name,
    required String nameLatin,
    required String family,
    required String letter,
    required String chipColorHex,
    required int sunNeeds,
    required int waterNeeds,
    required int spaceNeeds,
    @Default([]) List<String> goodNeighborIds,
    @Default([]) List<String> badNeighborIds,
    @Default([]) List<String> tags,
    String? rotationBefore,
    String? rotationAfter,
  }) = _Plant;

  factory Plant.fromJson(Map<String, dynamic> json) => _$PlantFromJson(json);

  Color get chipColor {
    final hex = chipColorHex.replaceAll('#', '');
    return Color(int.parse('FF$hex', radix: 16));
  }
}
