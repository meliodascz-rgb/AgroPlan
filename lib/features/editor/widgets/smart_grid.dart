import 'package:flutter/material.dart';

import '../../../core/theme/app_theme_colors.dart';
import '../../../shared/models/field.dart';
import '../../../shared/models/plant.dart';
import '../../../shared/models/placement.dart';
import '../../../shared/widgets/plant_chip.dart';
import '../providers/heatmap_provider.dart';

class SmartGrid extends StatelessWidget {
  const SmartGrid({
    super.key,
    required this.field,
    required this.placements,
    required this.heatmap,
    required this.catalog,
    required this.onCellTap,
  });

  final Field field;
  final List<Placement> placements;
  final Map<int, HeatmapValue> heatmap;
  final List<Plant> catalog;
  final void Function(int cellIndex) onCellTap;

  static const _cellSize = 36.0;
  static const _gap      = 3.0;

  @override
  Widget build(BuildContext context) {
    final total    = field.cols * field.rows;
    final plantMap = {for (final p in placements) p.cellIndex: p.speciesId};

    return SizedBox(
      width: field.cols * (_cellSize + _gap) - _gap,
      child: Wrap(
        spacing: _gap,
        runSpacing: _gap,
        children: List.generate(total, (i) {
          final isActive =
              field.shapeMask.isEmpty || field.shapeMask.contains(i);
          if (!isActive) {
            return const SizedBox(width: _cellSize, height: _cellSize);
          }

          final speciesId = plantMap[i];
          final heat      = heatmap[i];
          final plant     = speciesId != null
              ? catalog.where((Plant p) => p.id == speciesId).toList()
              : <Plant>[];

          return _GridCell(
            size:   _cellSize,
            heat:   heat,
            plant:  plant.isEmpty ? null : plant.first,
            onTap:  () => onCellTap(i),
          );
        }),
      ),
    );
  }
}

class _GridCell extends StatelessWidget {
  const _GridCell({
    required this.size,
    required this.heat,
    required this.plant,
    required this.onTap,
  });

  final double size;
  final HeatmapValue? heat;
  final Plant? plant;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;

    final Color bg;
    final Color border;

    switch (heat) {
      case HeatmapValue.good:
        bg     = c.good.withValues(alpha: 0.13);
        border = c.good;
      case HeatmapValue.bad:
        bg     = c.bad.withValues(alpha: 0.13);
        border = c.bad;
      case HeatmapValue.neutral:
        bg     = c.neutral.withValues(alpha: 0.12);
        border = c.neutral;
      default:
        bg     = c.paper;
        border = c.line;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size, height: size,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: border),
        ),
        alignment: Alignment.center,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            if (plant != null)
              PlantChip(
                  letter: plant!.letter, color: plant!.chipColor, size: 24)
            else if (heat == HeatmapValue.good)
              Container(
                width: 6, height: 6,
                decoration: BoxDecoration(
                    color: c.good, shape: BoxShape.circle),
              ),
            if (heat == HeatmapValue.bad)
              Positioned(
                top: -4, right: -4,
                child: Container(
                  width: 12, height: 12,
                  decoration: BoxDecoration(
                      color: c.bad, shape: BoxShape.circle),
                  child: const Icon(Icons.close_rounded,
                      color: Colors.white, size: 8),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
