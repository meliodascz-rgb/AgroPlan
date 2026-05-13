import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../shared/models/plant.dart';
import '../../../shared/widgets/plant_chip.dart';
import '../providers/catalog_provider.dart';

class CompanionPills extends ConsumerWidget {
  const CompanionPills({
    super.key,
    required this.plantIds,
    required this.isGood,
  });

  final List<String> plantIds;
  final bool isGood;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c = context.colors;
    if (plantIds.isEmpty) {
      return Text(AppStrings.noData,
          style: AppTypography.body(13).copyWith(color: c.muted));
    }

    final catalog = ref.watch(catalogProvider).maybeWhen(
          data: (v) => v,
          orElse: () => <Plant>[],
        );
    final borderColor = isGood ? c.good : c.bad;

    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: plantIds.map((id) {
        final matches = catalog.where((Plant p) => p.id == id).toList();
        final name    = matches.isEmpty ? AppStrings.noData : matches.first.name;
        final chip    = matches.isEmpty ? null : matches.first;
        return _Pill(plant: chip, name: name, borderColor: borderColor);
      }).toList(),
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill({
    required this.plant,
    required this.name,
    required this.borderColor,
  });
  final Plant? plant;
  final String name;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Container(
      padding: const EdgeInsets.fromLTRB(6, 6, 11, 6),
      decoration: BoxDecoration(
        color: c.paper,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: borderColor.withValues(alpha: 0.33)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (plant != null)
            PlantChip(letter: plant!.letter, color: plant!.chipColor, size: 20),
          const SizedBox(width: 7),
          Text(name,
              style: AppTypography.body(12).copyWith(color: c.ink2)),
        ],
      ),
    );
  }
}
