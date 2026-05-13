import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/utils/extensions.dart';
import '../../../shared/models/placement.dart';
import '../../catalog/providers/catalog_provider.dart';
import 'editor_provider.dart';

part 'heatmap_provider.g.dart';

enum HeatmapValue { good, bad, neutral, empty }

extension HeatmapValueX on HeatmapValue {
  Color get color => switch (this) {
        HeatmapValue.good    => AppColors.good.withValues(alpha: 0.35),
        HeatmapValue.bad     => AppColors.bad.withValues(alpha: 0.35),
        HeatmapValue.neutral => AppColors.neutral.withValues(alpha: 0.2),
        HeatmapValue.empty   => Colors.transparent,
      };
}

/// Returns a cell-index → HeatmapValue map for the given field and selected
/// plant. Computed locally from catalog relationship data — no network call.
/// Returns an empty map while the catalog is loading or if no plant is selected.
@riverpod
Map<int, HeatmapValue> heatmap(
  Ref ref,
  String fieldId,
  String activePlantId,
) {
  final catalogAsync = ref.watch(catalogProvider);
  final placements   = ref.watch(editorProvider(fieldId)).value?.placements
      ?? const <Placement>[];

  return catalogAsync.maybeWhen(
    data: (plants) {
      final activePlant = plants.firstOrNull((p) => p.id == activePlantId);
      if (activePlant == null) return {};

      final goodSet = activePlant.goodNeighborIds.toSet();
      final badSet  = activePlant.badNeighborIds.toSet();

      final result = <int, HeatmapValue>{};
      for (final placement in placements) {
        if (placement.speciesId == activePlantId) continue;
        result[placement.cellIndex] = goodSet.contains(placement.speciesId)
            ? HeatmapValue.good
            : badSet.contains(placement.speciesId)
                ? HeatmapValue.bad
                : HeatmapValue.neutral;
      }
      return result;
    },
    orElse: () => {},
  );
}
