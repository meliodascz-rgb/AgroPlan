import 'package:flutter/material.dart';

import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';

class CatalogFilterChips extends StatelessWidget {
  const CatalogFilterChips({
    super.key,
    required this.selected,
    required this.onSelected,
  });

  final String selected;
  final void Function(String) onSelected;

  // Display label → tag value stored in provider / DB.
  // Keys use AppStrings so they can be localized later.
  // Values are the raw DB tag strings — do NOT localize these.
  static const _filters = <String, String>{
    AppStrings.filterAll:      AppStrings.filterAll,
    AppStrings.filterShade:    'do stínu',
    AppStrings.filterNitrogen: 'fixují dusík',
    AppStrings.filterLegumes:  'luskoviny',
    AppStrings.filterHerbs:    'bylinky',
    AppStrings.filterRoot:     'kořenová zelenina',
    AppStrings.filterLeafy:    'listová zelenina',
    AppStrings.filterFruit:    'plodová zelenina',
  };

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return SizedBox(
      height: 36,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        children: _filters.entries.map((e) {
          final isActive = selected == e.value;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () => onSelected(e.value),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                decoration: BoxDecoration(
                  color: isActive ? c.forest : c.card,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      color: isActive ? c.forest : c.line),
                ),
                child: Text(
                  e.key,
                  style: AppTypography.body(12).copyWith(
                      color: isActive ? c.paper : c.ink2),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
