import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../shared/models/plant.dart';
import '../../../shared/widgets/plant_chip.dart';
import '../providers/catalog_provider.dart';
import '../widgets/companion_pills.dart';
import '../widgets/needs_bar.dart';
import '../widgets/rotation_flow.dart';

class PlantDetailScreen extends ConsumerWidget {
  const PlantDetailScreen({super.key, required this.plantId});

  final String plantId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catalogAsync = ref.watch(catalogProvider);

    return Scaffold(
      backgroundColor: context.colors.paper,
      body: catalogAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error:   (e, _) => Center(child: Text('Chyba: $e')),
        data: (plants) {
          final matches = plants.where((Plant p) => p.id == plantId).toList();
          if (matches.isEmpty) {
            return const Center(child: Text(AppStrings.plantNotFound));
          }
          return _DetailBody(plant: matches.first);
        },
      ),
    );
  }
}

class _DetailBody extends StatelessWidget {
  const _DetailBody({required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: _Hero(plant: plant)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
            child: Row(
              children: [
                NeedsBar(type: NeedsType.sun,   value: plant.sunNeeds),
                const SizedBox(width: 8),
                NeedsBar(type: NeedsType.water, value: plant.waterNeeds),
                const SizedBox(width: 8),
                NeedsBar(type: NeedsType.space, value: plant.spaceNeeds),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: _CompanionsSection(plant: plant)),
        if (plant.rotationBefore != null || plant.rotationAfter != null)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 24, 18, 0),
              child: RotationFlow(
                before:  plant.rotationBefore,
                current: plant.name,
                after:   plant.rotationAfter,
              ),
            ),
          ),
        const SliverToBoxAdapter(child: SizedBox(height: 100)),
      ],
    );
  }
}

class _Hero extends StatelessWidget {
  const _Hero({required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 240,
          color: plant.chipColor,
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.fromLTRB(22, 0, 22, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${plant.family.toUpperCase()} · '
                '${plant.tags.isNotEmpty ? plant.tags.first.toUpperCase() : ""}',
                style: AppTypography.mono(10,
                    color: Colors.white.withValues(alpha: 0.85)),
              ),
              const SizedBox(height: 6),
              Text(plant.name,
                  style: AppTypography.serif(38)
                      .copyWith(color: Colors.white, height: 1)),
              const SizedBox(height: 4),
              Text(plant.nameLatin,
                  style: AppTypography.body(13).copyWith(
                      color: Colors.white.withValues(alpha: 0.85),
                      fontStyle: FontStyle.italic)),
            ],
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 8, 18, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _CircleButton(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(Icons.chevron_left_rounded,
                      color: Colors.white, size: 26),
                ),
                _CircleButton(
                  onTap: () {},
                  child: const Icon(Icons.favorite_border_rounded,
                      color: Colors.white, size: 20),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: -20, top: 30,
          child: Opacity(
            opacity: 0.18,
            child: PlantChip(
                letter: plant.letter, color: Colors.white, size: 180),
          ),
        ),
      ],
    );
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton({required this.onTap, required this.child});
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36, height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withValues(alpha: 0.25),
        ),
        child: child,
      ),
    );
  }
}

class _CompanionsSection extends StatelessWidget {
  const _CompanionsSection({required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 22, 22, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.goodNeighbors,
              style: AppTypography.mono(10, color: c.good)),
          const SizedBox(height: 10),
          CompanionPills(plantIds: plant.goodNeighborIds, isGood: true),
          const SizedBox(height: 20),
          Text(AppStrings.conflicts,
              style: AppTypography.mono(10, color: c.bad)),
          const SizedBox(height: 10),
          CompanionPills(plantIds: plant.badNeighborIds, isGood: false),
        ],
      ),
    );
  }
}
