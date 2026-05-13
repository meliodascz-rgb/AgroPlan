import 'package:flutter/material.dart';

import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';

enum NeedsType { sun, water, space }

class NeedsBar extends StatelessWidget {
  const NeedsBar({super.key, required this.type, required this.value});

  final NeedsType type;
  final int value; // 1–3

  @override
  Widget build(BuildContext context) {
    final c = context.colors;

    final label = switch (type) {
      NeedsType.sun   => AppStrings.needsSun,
      NeedsType.water => AppStrings.needsWater,
      NeedsType.space => AppStrings.needsSpace,
    };

    final icon = switch (type) {
      NeedsType.sun   => Icon(Icons.wb_sunny_rounded,    size: 18, color: c.amber),
      NeedsType.water => Icon(Icons.water_drop_rounded,  size: 18, color: c.leaf),
      NeedsType.space => Icon(Icons.open_in_full_rounded, size: 18, color: c.leaf),
    };

    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: c.paper,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: c.line),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            const SizedBox(height: 6),
            Text(label, style: AppTypography.mono(9, color: c.muted)),
            const SizedBox(height: 6),
            Row(
              children: List.generate(
                3,
                (i) => Expanded(
                  child: Container(
                    height: 4,
                    margin: EdgeInsets.only(right: i < 2 ? 3 : 0),
                    decoration: BoxDecoration(
                      color: i < value ? c.forest : c.line,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
