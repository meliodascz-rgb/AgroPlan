import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../shared/models/plant.dart';
import '../../../shared/widgets/plant_chip.dart';
import '../../catalog/providers/catalog_provider.dart';
import '../providers/editor_provider.dart';

class PlantRail extends ConsumerWidget {
  const PlantRail({super.key, required this.fieldId});

  final String fieldId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c          = context.colors;
    final catalog    = ref.watch(catalogProvider).maybeWhen(
          data: (v) => v,
          orElse: () => <Plant>[],
        );
    final selectedId = ref.watch(editorProvider(fieldId)).value?.selectedPlantId;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Container(
            width: 36, height: 4,
            margin: const EdgeInsets.only(bottom: 14),
            decoration: BoxDecoration(
              color: c.line,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(AppStrings.plantRailTitle, style: AppTypography.serif(18)),
              if (selectedId != null)
                Text(AppStrings.tapCellHint,
                    style: AppTypography.mono(10, color: c.forest)),
            ],
          ),
        ),
        SizedBox(
          height: 92,
          child: catalog.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                  itemCount: catalog.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 10),
                  itemBuilder: (context, i) {
                    final plant    = catalog[i];
                    final isActive = plant.id == selectedId;
                    return GestureDetector(
                      onTap: () => ref
                          .read(editorProvider(fieldId).notifier)
                          .selectPlant(plant.id),
                      child: Container(
                        width: 60,
                        padding: const EdgeInsets.fromLTRB(4, 10, 4, 8),
                        decoration: BoxDecoration(
                          color: isActive
                              ? c.forest.withValues(alpha: 0.08)
                              : c.paper,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                              color: isActive ? c.forest : c.line),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            PlantChip(
                                letter: plant.letter,
                                color: plant.chipColor,
                                size: 28),
                            const SizedBox(height: 6),
                            Text(
                              plant.name,
                              style: AppTypography.body(10)
                                  .copyWith(color: c.ink2),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
