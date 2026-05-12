import 'package:freezed_annotation/freezed_annotation.dart';

part 'placement.freezed.dart';
part 'placement.g.dart';

enum Season { spring, autumn }

@freezed
abstract class Placement with _$Placement {
  const factory Placement({
    required String id,
    required String fieldId,
    required int cellIndex,
    required String plantId,
    required int year,
    required Season season,
  }) = _Placement;

  factory Placement.fromJson(Map<String, dynamic> json) => _$PlacementFromJson(json);
}
