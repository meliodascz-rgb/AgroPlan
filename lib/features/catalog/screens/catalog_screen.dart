import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/app_router.dart';
import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../shared/models/plant.dart';
import '../../../shared/widgets/plant_chip.dart';
import '../providers/catalog_provider.dart';
import '../widgets/filter_chips.dart';

class CatalogScreen extends ConsumerStatefulWidget {
  const CatalogScreen({super.key});

  @override
  ConsumerState<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends ConsumerState<CatalogScreen> {
  final _search = TextEditingController();
  String _query = '';

  @override
  void initState() {
    super.initState();
    _search.addListener(
        () => setState(() => _query = _search.text.trim().toLowerCase()));
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final catalogAsync = ref.watch(filteredCatalogProvider);
    final filter       = ref.watch(catalogFilterProvider);

    return Scaffold(
      backgroundColor: context.colors.paper,
      body: SafeArea(
        child: catalogAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error:   (e, _) => Center(child: Text('Chyba: $e')),
          data: (plants) {
            final visible = _query.isEmpty
                ? plants
                : plants
                    .where((Plant p) =>
                        p.name.toLowerCase().contains(_query) ||
                        p.nameLatin.toLowerCase().contains(_query))
                    .toList();

            final grouped = <String, List<Plant>>{};
            for (final p in visible) {
              (grouped[p.name[0].toUpperCase()] ??= []).add(p);
            }
            final letters = grouped.keys.toList()..sort();

            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: _Header(count: plants.length)),
                SliverToBoxAdapter(child: _SearchBar(controller: _search)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14, bottom: 4),
                    child: CatalogFilterChips(
                      selected: filter,
                      onSelected: (f) =>
                          ref.read(catalogFilterProvider.notifier).select(f),
                    ),
                  ),
                ),
                if (visible.isEmpty)
                  const SliverFillRemaining(
                    child: Center(child: Text(AppStrings.catalogNoResults)),
                  )
                else
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, i) => _LetterGroup(
                        letter: letters[i],
                        plants: grouped[letters[i]]!,
                      ),
                      childCount: letters.length,
                    ),
                  ),
                const SliverToBoxAdapter(child: SizedBox(height: 40)),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 6, 22, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${AppStrings.catalogDatabase} · $count ${AppStrings.catalogSpecies}',
              style: AppTypography.mono(10, color: c.muted)),
          const SizedBox(height: 2),
          Text(AppStrings.catalogTitle, style: AppTypography.serif(32)),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Container(
      margin: const EdgeInsets.fromLTRB(18, 16, 18, 0),
      decoration: BoxDecoration(
        color: c.card,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: c.line),
      ),
      child: TextField(
        controller: controller,
        style: AppTypography.body(15),
        decoration: InputDecoration(
          hintText: AppStrings.catalogSearchHint,
          hintStyle: AppTypography.body(15).copyWith(color: c.muted),
          prefixIcon: Icon(Icons.search_rounded, color: c.muted, size: 20),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}

class _LetterGroup extends StatelessWidget {
  const _LetterGroup({required this.letter, required this.plants});
  final String letter;
  final List<Plant> plants;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 14, 28, 6),
          child: Text(letter, style: AppTypography.mono(10, color: c.muted)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            color: c.card,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: c.line),
          ),
          child: Column(
            children: [
              for (int i = 0; i < plants.length; i++)
                _PlantRow(plant: plants[i], isLast: i == plants.length - 1),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlantRow extends StatelessWidget {
  const _PlantRow({required this.plant, required this.isLast});
  final Plant plant;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return GestureDetector(
      onTap: () => context.push(AppRoutes.plantDetailPath(plant.id)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
        decoration: BoxDecoration(
          border: isLast
              ? null
              : Border(bottom: BorderSide(color: c.line)),
        ),
        child: Row(
          children: [
            PlantChip(letter: plant.letter, color: plant.chipColor, size: 34),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(plant.name, style: AppTypography.serif(17)),
                  const SizedBox(height: 1),
                  Text(plant.nameLatin,
                      style: AppTypography.body(11).copyWith(
                          color: c.muted, fontStyle: FontStyle.italic)),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: c.paper,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: c.line),
              ),
              child: Text(
                plant.tags.isNotEmpty ? plant.tags.first.toUpperCase() : '',
                style: AppTypography.mono(9, color: c.leaf),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
