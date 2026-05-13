import 'package:flutter/material.dart';

import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../shared/models/placement.dart';

class SeasonSwitcher extends StatelessWidget {
  const SeasonSwitcher({
    super.key,
    required this.year,
    required this.season,
    required this.onChanged,
  });

  final int year;
  final Season season;
  final void Function(int year, Season season) onChanged;

  List<(int, Season, String)> _slots() {
    final now = DateTime.now().year;
    return [
      (now - 1, Season.spring, '${AppStrings.seasonSpring} ${now - 1}'),
      (now - 1, Season.autumn, '${AppStrings.seasonAutumn} ${now - 1}'),
      (now,     Season.spring, '${AppStrings.seasonSpring} $now'),
      (now,     Season.autumn, '${AppStrings.seasonAutumn} $now'),
      (now + 1, Season.spring, '${AppStrings.seasonSpring} ${now + 1}'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final c     = context.colors;
    final slots = _slots();
    return SizedBox(
      height: 36,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        itemCount: slots.length,
        separatorBuilder: (_, _) => const SizedBox(width: 6),
        itemBuilder: (context, i) {
          final (y, s, label) = slots[i];
          final isActive = y == year && s == season;
          return GestureDetector(
            onTap: () => onChanged(y, s),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
              decoration: BoxDecoration(
                color: isActive ? c.forest : c.card,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    color: isActive ? c.forest : c.line),
              ),
              child: Text(
                label.toUpperCase(),
                style: AppTypography.mono(10,
                    color: isActive ? c.paper : c.muted),
              ),
            ),
          );
        },
      ),
    );
  }
}
