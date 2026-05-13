import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/app_router.dart';
import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../shared/models/field.dart';
import '../../../shared/models/placement.dart';
import '../../../shared/models/plant.dart';
import '../../catalog/providers/catalog_provider.dart';
import '../../dashboard/providers/fields_provider.dart';
import '../providers/editor_provider.dart';
import '../providers/heatmap_provider.dart';
import '../widgets/plant_rail.dart';
import '../widgets/season_switcher.dart';
import '../widgets/smart_grid.dart';

class FieldEditorScreen extends ConsumerWidget {
  const FieldEditorScreen({super.key, required this.fieldId});

  final String fieldId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c            = context.colors;
    final fieldsAsync  = ref.watch(fieldsProvider);
    final editorAsync  = ref.watch(editorProvider(fieldId));
    final catalogAsync = ref.watch(catalogProvider);

    final allFields   = fieldsAsync.maybeWhen(data: (v) => v, orElse: () => null);
    final fieldOrNull = allFields
        ?.where((Field f) => f.id == fieldId)
        .toList()
        .firstOrNull;

    final catalog = catalogAsync.maybeWhen(
      data: (v) => v,
      orElse: () => <Plant>[],
    );

    // Null while loading; populated once AsyncValue has data
    final editorState = editorAsync.value;

    final currentPlacements = editorState == null
        ? <Placement>[]
        : editorState.placements
              .where((Placement p) =>
                  p.year == editorState.year && p.season == editorState.season)
              .toList();

    final heatmap = editorState?.selectedPlantId != null
        ? ref.watch(heatmapProvider(fieldId, editorState!.selectedPlantId!))
        : <int, HeatmapValue>{};

    return Scaffold(
      backgroundColor: c.paper,
      body: SafeArea(
        child: Column(
          children: [
            // ── Header ──────────────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 6, 18, 0),
              child: Row(
                children: [
                  _CircleButton(
                    onTap: () => context.pop(),
                    child: Icon(Icons.chevron_left_rounded,
                        color: c.ink, size: 26),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fieldOrNull != null
                              ? '${AppStrings.fieldLabel} · '
                                '${fieldOrNull.cols} × ${fieldOrNull.rows}'
                              : AppStrings.fieldLabel,
                          style: AppTypography.mono(9, color: c.muted),
                        ),
                        Text(
                          fieldOrNull?.name ?? '…',
                          style: AppTypography.serif(22),
                        ),
                      ],
                    ),
                  ),
                  _CircleButton(
                    onTap: () =>
                        context.push(AppRoutes.fieldSettingsPath(fieldId)),
                    child: Icon(Icons.settings_outlined,
                        color: c.ink2, size: 20),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 14),

            // ── Season switcher ──────────────────────────────────────────────
            SeasonSwitcher(
              year:   editorState?.year   ?? DateTime.now().year,
              season: editorState?.season ?? Season.spring,
              onChanged: (y, s) =>
                  ref.read(editorProvider(fieldId).notifier).switchSeason(y, s),
            ),

            const SizedBox(height: 18),

            // ── Grid area ────────────────────────────────────────────────────
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: c.card,
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: c.line),
                    ),
                    child: editorAsync.when(
                      // Placements are loading from Drift / Supabase
                      loading: () => const SizedBox(
                        height: 180,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                      error: (Object e, _) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Center(
                          child: Text('Chyba: $e',
                              style:
                                  AppTypography.body(13).copyWith(color: c.muted)),
                        ),
                      ),
                      data: (_) => fieldOrNull == null
                          ? const SizedBox(
                              height: 180,
                              child: Center(child: CircularProgressIndicator()),
                            )
                          : Column(
                              children: [
                                SmartGrid(
                                  field:      fieldOrNull,
                                  placements: currentPlacements,
                                  heatmap:    heatmap,
                                  catalog:    catalog,
                                  onCellTap:  (i) => ref
                                      .read(editorProvider(fieldId).notifier)
                                      .placePlant(i),
                                ),
                                const SizedBox(height: 12),
                                _Legend(),
                              ],
                            ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // ── Plant rail ───────────────────────────────────────────────────
            Container(
              decoration: BoxDecoration(
                color: c.card,
                border: Border(top: BorderSide(color: c.line)),
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(26)),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0F000000),
                    blurRadius: 24,
                    offset: Offset(0, -6),
                  ),
                ],
              ),
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 24),
              child: PlantRail(fieldId: fieldId),
            ),
          ],
        ),
      ),
    );
  }
}

class _Legend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final items = [
      (c.good,    AppStrings.legendGood),
      (c.bad,     AppStrings.legendConflict),
      (c.neutral, AppStrings.legendNeutral),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.map((item) {
        final (color, label) = item;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Row(
            children: [
              Container(
                width: 8, height: 8,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 5),
              Text(label, style: AppTypography.mono(9, color: c.muted)),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton({required this.onTap, required this.child});
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36, height: 36,
        decoration: BoxDecoration(
          color: c.card,
          shape: BoxShape.circle,
          border: Border.all(color: c.line),
        ),
        child: child,
      ),
    );
  }
}
