import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';
import 'app_typography.dart';

abstract final class AppTheme {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.forest,
          surface: AppColors.paper,
          onSurface: AppColors.ink,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: AppColors.paper,
        cardColor: AppColors.card,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.paper,
          foregroundColor: AppColors.ink,
          elevation: 0,
          scrolledUnderElevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          titleTextStyle: AppTypography.serif(20),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.forest,
          foregroundColor: Colors.white,
          elevation: 4,
        ),
        chipTheme: ChipThemeData(
          backgroundColor: AppColors.card,
          labelStyle: AppTypography.mono(11),
          side: BorderSide.none,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          shape: const StadiumBorder(),
        ),
        textTheme: TextTheme(
          displayLarge: AppTypography.serif(34),
          displayMedium: AppTypography.serif(28),
          headlineLarge: AppTypography.serif(24),
          headlineMedium: AppTypography.serif(20),
          bodyLarge: AppTypography.body(16),
          bodyMedium: AppTypography.body(14),
          labelSmall: AppTypography.mono(10),
        ),
      );
}
