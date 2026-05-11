import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/theme/app_colors.dart';

part 'heatmap_provider.g.dart';

enum HeatmapValue { good, bad, neutral, empty }

extension HeatmapValueX on HeatmapValue {
  Color get color => switch (this) {
        HeatmapValue.good    => AppColors.good.withOpacity(0.35),
        HeatmapValue.bad     => AppColors.bad.withOpacity(0.35),
        HeatmapValue.neutral => AppColors.neutral.withOpacity(0.2),
        HeatmapValue.empty   => Colors.transparent,
      };
}

@riverpod
Map<int, HeatmapValue> heatmap(
  Ref ref,
  String fieldId,
  String activePlantId,
) {
  // TODO: compute using relationship weights from catalog provider
  return {};
}
