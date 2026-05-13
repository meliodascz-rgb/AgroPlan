import 'package:flutter/material.dart';

import 'app_colors.dart';

/// Theme extension that holds all semantic color tokens.
/// Access via [BuildContext.colors] in any widget build method.
/// Light tokens mirror [AppColors] constants; dark tokens are the dark-mode equivalents.
@immutable
class AppThemeColors extends ThemeExtension<AppThemeColors> {
  const AppThemeColors({
    required this.paper,
    required this.paperDeep,
    required this.card,
    required this.ink,
    required this.ink2,
    required this.muted,
    required this.faint,
    required this.line,
    required this.forestDeep,
    required this.forest,
    required this.sage,
    required this.sageSoft,
    required this.leaf,
    required this.clay,
    required this.claySoft,
    required this.amber,
    required this.good,
    required this.goodSoft,
    required this.bad,
    required this.badSoft,
    required this.neutral,
  });

  final Color paper;
  final Color paperDeep;
  final Color card;
  final Color ink;
  final Color ink2;
  final Color muted;
  final Color faint;
  final Color line;
  final Color forestDeep;
  final Color forest;
  final Color sage;
  final Color sageSoft;
  final Color leaf;
  final Color clay;
  final Color claySoft;
  final Color amber;
  final Color good;
  final Color goodSoft;
  final Color bad;
  final Color badSoft;
  final Color neutral;

  static const light = AppThemeColors(
    paper:      AppColors.paper,
    paperDeep:  AppColors.paperDeep,
    card:       AppColors.card,
    ink:        AppColors.ink,
    ink2:       AppColors.ink2,
    muted:      AppColors.muted,
    faint:      AppColors.faint,
    line:       AppColors.line,
    forestDeep: AppColors.forestDeep,
    forest:     AppColors.forest,
    sage:       AppColors.sage,
    sageSoft:   AppColors.sageSoft,
    leaf:       AppColors.leaf,
    clay:       AppColors.clay,
    claySoft:   AppColors.claySoft,
    amber:      AppColors.amber,
    good:       AppColors.good,
    goodSoft:   AppColors.goodSoft,
    bad:        AppColors.bad,
    badSoft:    AppColors.badSoft,
    neutral:    AppColors.neutral,
  );

  static const dark = AppThemeColors(
    paper:      Color(0xFF121A10),
    paperDeep:  Color(0xFF0D1309),
    card:       Color(0xFF1C2819),
    ink:        Color(0xFFE8EDE4),
    ink2:       Color(0xFFBDC9B6),
    muted:      Color(0xFF7B8B76),
    faint:      Color(0x0FE8EDE4),
    line:       Color(0x1AE8EDE4),
    forestDeep: Color(0xFF090F08),
    forest:     Color(0xFF5A8A54),
    sage:       Color(0xFF8DA384),
    sageSoft:   Color(0xFF2A3C26),
    leaf:       Color(0xFF7AAD6A),
    clay:       Color(0xFFD46855),
    claySoft:   Color(0xFF3A1F18),
    amber:      Color(0xFFD4A840),
    good:       Color(0xFF6AA854),
    goodSoft:   Color(0xFF1A3014),
    bad:        Color(0xFFD46A54),
    badSoft:    Color(0xFF3A1A14),
    neutral:    Color(0xFF9A9288),
  );

  @override
  AppThemeColors copyWith({
    Color? paper, Color? paperDeep, Color? card,
    Color? ink, Color? ink2, Color? muted, Color? faint, Color? line,
    Color? forestDeep, Color? forest, Color? sage, Color? sageSoft, Color? leaf,
    Color? clay, Color? claySoft, Color? amber,
    Color? good, Color? goodSoft, Color? bad, Color? badSoft, Color? neutral,
  }) => AppThemeColors(
    paper:      paper      ?? this.paper,
    paperDeep:  paperDeep  ?? this.paperDeep,
    card:       card       ?? this.card,
    ink:        ink        ?? this.ink,
    ink2:       ink2       ?? this.ink2,
    muted:      muted      ?? this.muted,
    faint:      faint      ?? this.faint,
    line:       line       ?? this.line,
    forestDeep: forestDeep ?? this.forestDeep,
    forest:     forest     ?? this.forest,
    sage:       sage       ?? this.sage,
    sageSoft:   sageSoft   ?? this.sageSoft,
    leaf:       leaf       ?? this.leaf,
    clay:       clay       ?? this.clay,
    claySoft:   claySoft   ?? this.claySoft,
    amber:      amber      ?? this.amber,
    good:       good       ?? this.good,
    goodSoft:   goodSoft   ?? this.goodSoft,
    bad:        bad        ?? this.bad,
    badSoft:    badSoft    ?? this.badSoft,
    neutral:    neutral    ?? this.neutral,
  );

  @override
  AppThemeColors lerp(AppThemeColors other, double t) => AppThemeColors(
    paper:      Color.lerp(paper,      other.paper,      t)!,
    paperDeep:  Color.lerp(paperDeep,  other.paperDeep,  t)!,
    card:       Color.lerp(card,       other.card,       t)!,
    ink:        Color.lerp(ink,        other.ink,        t)!,
    ink2:       Color.lerp(ink2,       other.ink2,       t)!,
    muted:      Color.lerp(muted,      other.muted,      t)!,
    faint:      Color.lerp(faint,      other.faint,      t)!,
    line:       Color.lerp(line,       other.line,       t)!,
    forestDeep: Color.lerp(forestDeep, other.forestDeep, t)!,
    forest:     Color.lerp(forest,     other.forest,     t)!,
    sage:       Color.lerp(sage,       other.sage,       t)!,
    sageSoft:   Color.lerp(sageSoft,   other.sageSoft,   t)!,
    leaf:       Color.lerp(leaf,       other.leaf,       t)!,
    clay:       Color.lerp(clay,       other.clay,       t)!,
    claySoft:   Color.lerp(claySoft,   other.claySoft,   t)!,
    amber:      Color.lerp(amber,      other.amber,      t)!,
    good:       Color.lerp(good,       other.good,       t)!,
    goodSoft:   Color.lerp(goodSoft,   other.goodSoft,   t)!,
    bad:        Color.lerp(bad,        other.bad,        t)!,
    badSoft:    Color.lerp(badSoft,    other.badSoft,    t)!,
    neutral:    Color.lerp(neutral,    other.neutral,    t)!,
  );
}

extension AppThemeColorsX on BuildContext {
  AppThemeColors get colors => Theme.of(this).extension<AppThemeColors>()!;
}
