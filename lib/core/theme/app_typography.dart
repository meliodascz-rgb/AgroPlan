import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

abstract final class AppTypography {
  // Instrument Serif — large headings (field names, screen titles)
  static TextStyle serif(double size, {FontStyle style = FontStyle.normal}) =>
      GoogleFonts.instrumentSerif(
        fontSize: size,
        color: AppColors.ink,
        fontStyle: style,
      );

  // Helvetica Neue fallback via system sans — body text
  static TextStyle body(double size, {FontWeight weight = FontWeight.w400}) =>
      TextStyle(
        fontFamily: 'Helvetica Neue',
        fontSize: size,
        color: AppColors.ink,
        fontWeight: weight,
      );

  // JetBrains Mono — labels, tags, metadata (all-caps with letter-spacing)
  static TextStyle mono(double size, {Color? color}) =>
      GoogleFonts.jetBrainsMono(
        fontSize: size,
        color: color ?? AppColors.muted,
        letterSpacing: 0.8,
      );
}
