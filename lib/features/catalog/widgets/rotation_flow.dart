import 'package:flutter/material.dart';

import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';

class RotationFlow extends StatelessWidget {
  const RotationFlow({
    super.key,
    required this.before,
    required this.current,
    required this.after,
  });

  final String? before;
  final String current;
  final String? after;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: c.card,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: c.line),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.cropRotation, style: AppTypography.mono(10, color: c.muted)),
          const SizedBox(height: 12),
          Row(
            children: [
              _Step(
                  label: AppStrings.rotationBefore,
                  name: before ?? AppStrings.noData,
                  highlighted: false),
              _Arrow(),
              _Step(
                  label: AppStrings.rotationThisYear,
                  name: current,
                  highlighted: true),
              _Arrow(),
              _Step(
                  label: AppStrings.rotationAfter,
                  name: after ?? AppStrings.noData,
                  highlighted: false),
            ],
          ),
        ],
      ),
    );
  }
}

class _Step extends StatelessWidget {
  const _Step({
    required this.label,
    required this.name,
    required this.highlighted,
  });
  final String label;
  final String name;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
        decoration: BoxDecoration(
          color: highlighted ? c.forest : c.paper,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              label,
              style: AppTypography.mono(9).copyWith(
                color: highlighted
                    ? c.paper.withValues(alpha: 0.7)
                    : c.muted,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              name,
              style: AppTypography.serif(15).copyWith(
                color: highlighted ? c.paper : c.ink,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _Arrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Text('→',
            style: AppTypography.body(14)
                .copyWith(color: context.colors.muted)),
      );
}
