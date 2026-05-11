import 'package:freezed_annotation/freezed_annotation.dart';

part 'field.freezed.dart';
part 'field.g.dart';

@freezed
class Field with _$Field {
  const factory Field({
    required String id,
    required String userId,
    required String name,
    required int cols,
    required int rows,
    required int cellSizeCm,          // 20 / 30 / 50 / 100
    @Default([]) List<int> shapeMask, // active cell indices
  }) = _Field;

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);
}
