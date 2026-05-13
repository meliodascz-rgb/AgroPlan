import 'package:flutter/material.dart';

import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../shared/models/field.dart';

class FieldCard extends StatelessWidget {
  const FieldCard({super.key, required this.field, this.plantCount = 0});

  final Field field;
  final int plantCount;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: c.card,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: c.line),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _FieldThumb(cols: field.cols, rows: field.rows),
          const SizedBox(height: 10),
          Text(field.name,
              style: AppTypography.serif(17),
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${field.cols}×${field.rows} · ${field.cellSizeCm} cm',
                style: AppTypography.body(11).copyWith(color: c.muted),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                decoration: BoxDecoration(
                  color: c.paper,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: c.line),
                ),
                child: Text(
                  '$plantCount ks',
                  style: AppTypography.mono(10, color: c.leaf),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FieldThumb extends StatelessWidget {
  const _FieldThumb({required this.cols, required this.rows});
  final int cols;
  final int rows;

  @override
  Widget build(BuildContext context) {
    final c       = context.colors;
    const thumbH  = 56.0;
    final aspect  = cols / rows;
    final thumbW  = (thumbH * aspect).clamp(32.0, double.infinity);
    final dotSize = (thumbH / rows).clamp(2.0, 10.0) - 1.5;

    return Container(
      width: double.infinity,
      height: 64,
      decoration: BoxDecoration(
        color: c.paper,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: c.line),
      ),
      alignment: Alignment.center,
      child: SizedBox(
        width: thumbW,
        height: thumbH,
        child: CustomPaint(
          painter: _DotGridPainter(
              cols: cols, rows: rows, dotSize: dotSize, dotColor: c.leaf),
        ),
      ),
    );
  }
}

class _DotGridPainter extends CustomPainter {
  const _DotGridPainter({
    required this.cols,
    required this.rows,
    required this.dotSize,
    required this.dotColor,
  });

  final int cols;
  final int rows;
  final double dotSize;
  final Color dotColor;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = dotColor.withValues(alpha: 0.55);
    final cellW = size.width / cols;
    final cellH = size.height / rows;

    for (var r = 0; r < rows; r++) {
      for (var c = 0; c < cols; c++) {
        final cx = c * cellW + cellW / 2;
        final cy = r * cellH + cellH / 2;
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            Rect.fromCenter(
                center: Offset(cx, cy), width: dotSize, height: dotSize),
            const Radius.circular(1.5),
          ),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(_DotGridPainter old) =>
      old.cols != cols ||
      old.rows != rows ||
      old.dotSize != dotSize ||
      old.dotColor != dotColor;
}
