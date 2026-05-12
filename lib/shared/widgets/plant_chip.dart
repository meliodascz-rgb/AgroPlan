import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class PlantChip extends StatelessWidget {
  const PlantChip({
    super.key,
    required this.letter,
    required this.color,
    this.size = 36,
    this.showRing = false,
  });

  final String letter;
  final Color color;
  final double size;
  final bool showRing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.18),
        shape: BoxShape.circle,
        border: showRing ? Border.all(color: color, width: 2) : null,
      ),
      alignment: Alignment.center,
      child: Text(
        letter,
        style: TextStyle(
          color: AppColors.ink,
          fontSize: size * 0.42,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
