import 'package:freezed_annotation/freezed_annotation.dart';

part 'crop_history.freezed.dart';
part 'crop_history.g.dart';

@freezed
abstract class CropHistory with _$CropHistory {
  const factory CropHistory({
    required String id,
    required String fieldId,
    required int cellIndex,
    required String speciesId,
    required int year,
    @Default(false) bool diseaseLogged,
    String? diseaseNote,
  }) = _CropHistory;

  factory CropHistory.fromJson(Map<String, dynamic> json) => _$CropHistoryFromJson(json);
}
