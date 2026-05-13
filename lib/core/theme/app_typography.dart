import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTypography {
  // Instrument Serif — large headings (field names, screen titles)
  static TextStyle serif(double size, {Color? color, FontStyle style = FontStyle.normal}) =>
      GoogleFonts.instrumentSerif(
        fontSize: size,
        color: color,
        fontStyle: style,
      );

  // Helvetica Neue fallback via system sans — body text
  static TextStyle body(double size, {Color? color, FontWeight weight = FontWeight.w400}) =>
      TextStyle(
        fontFamily: 'Helvetica Neue',
        fontSize: size,
        color: color,
        fontWeight: weight,
      );

  // JetBrains Mono — labels, tags, metadata (all-caps with letter-spacing)
  static TextStyle mono(double size, {Color? color}) =>
      GoogleFonts.jetBrainsMono(
        fontSize: size,
        color: color,
        letterSpacing: 0.8,
      );
}
