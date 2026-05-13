import 'package:flutter/material.dart';

import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';

class AiTipWidget extends StatelessWidget {
  const AiTipWidget({super.key, required this.tip});

  final String tip;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: c.forest,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -10, bottom: -16,
            child: Opacity(
              opacity: 0.18,
              child: CustomPaint(
                  size: const Size(86, 86), painter: _LeafPainter(color: c.sage)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 6, height: 6,
                    decoration: BoxDecoration(color: c.sage, shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 8),
                  Text(AppStrings.aiTipLabel,
                      style: AppTypography.mono(10, color: c.sage)),
                ],
              ),
              const SizedBox(height: 8),
              Text(tip,
                  style: AppTypography.serif(19)
                      .copyWith(color: c.paper, height: 1.25)),
              const SizedBox(height: 14),
              Row(
                children: [
                  _TipButton(
                      label: AppStrings.aiTipShowProposal,
                      outlined: true,
                      paperColor: c.paper),
                  const SizedBox(width: 8),
                  _TipButton(
                      label: AppStrings.aiTipHide,
                      outlined: false,
                      paperColor: c.paper),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TipButton extends StatelessWidget {
  const _TipButton({
    required this.label,
    required this.outlined,
    required this.paperColor,
  });
  final String label;
  final bool outlined;
  final Color paperColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: outlined
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: paperColor.withValues(alpha: 0.25)),
            )
          : null,
      child: Text(
        label,
        style: AppTypography.body(13).copyWith(
          color: paperColor.withValues(alpha: outlined ? 0.85 : 0.6),
        ),
      ),
    );
  }
}

class _LeafPainter extends CustomPainter {
  const _LeafPainter({required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path()
      ..moveTo(size.width * 0.875, size.height * 0.125)
      ..cubicTo(
        size.width * 0.5,   size.height * 0.175,
        size.width * 0.175, size.height * 0.45,
        size.width * 0.175, size.height * 0.825,
      )
      ..cubicTo(
        size.width * 0.55,  size.height * 0.825,
        size.width * 0.825, size.height * 0.55,
        size.width * 0.875, size.height * 0.125,
      )
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_LeafPainter old) => old.color != color;
}
