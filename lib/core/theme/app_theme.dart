import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_theme_colors.dart';
import 'app_typography.dart';

abstract final class AppTheme {
  static ThemeData get light => _build(AppThemeColors.light, Brightness.light);
  static ThemeData get dark  => _build(AppThemeColors.dark,  Brightness.dark);

  static ThemeData _build(AppThemeColors c, Brightness brightness) => ThemeData(
    useMaterial3: true,
    brightness: brightness,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.forest,
      surface: c.paper,
      onSurface: c.ink,
      brightness: brightness,
    ),
    scaffoldBackgroundColor: c.paper,
    cardColor: c.card,
    extensions: [c],
    appBarTheme: AppBarTheme(
      backgroundColor: c.paper,
      foregroundColor: c.ink,
      elevation: 0,
      scrolledUnderElevation: 0,
      systemOverlayStyle: brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      titleTextStyle: AppTypography.serif(20),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.forest,
      foregroundColor: Colors.white,
      elevation: 4,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: c.card,
      labelStyle: AppTypography.mono(11),
      side: BorderSide.none,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      shape: const StadiumBorder(),
    ),
    textTheme: TextTheme(
      displayLarge:  AppTypography.serif(34),
      displayMedium: AppTypography.serif(28),
      headlineLarge: AppTypography.serif(24),
      headlineMedium:AppTypography.serif(20),
      bodyLarge:     AppTypography.body(16),
      bodyMedium:    AppTypography.body(14),
      labelSmall:    AppTypography.mono(10),
    ),
  );
}
