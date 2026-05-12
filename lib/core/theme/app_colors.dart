import 'package:flutter/material.dart';

// Direct mapping from the T design tokens defined in resources/screens-shared.jsx.
// If the JSX values change, update here first and run the app.
abstract final class AppColors {
  // Backgrounds
  static const paper     = Color(0xFFF5F1E8); // warm cream — scaffold background
  static const paperDeep = Color(0xFFECE6D6); // slightly darker cream
  static const card      = Color(0xFFFFFFFF); // white card surface

  // Text
  static const ink  = Color(0xFF1A2419); // near-black forest text
  static const ink2 = Color(0xFF3B4A36); // secondary text, slightly lighter
  static const muted = Color(0xFF6B7368); // labels, captions

  // Subtle fills and dividers (semi-transparent)
  static const faint = Color(0x0F1A2419); // rgba(26,36,25,0.06) — cell backgrounds
  static const line  = Color(0x171A2419); // rgba(26,36,25,0.09) — borders, dividers

  // Brand greens
  static const forestDeep = Color(0xFF1D3320); // darkest — splash background
  static const forest     = Color(0xFF2D4A2A); // primary action, FAB, buttons
  static const sage       = Color(0xFFA3B899); // accent elements
  static const sageSoft   = Color(0xFFC8D3BC); // user avatar background
  static const leaf       = Color(0xFF5B7A4C); // lighter accent, tags

  // Warm accents
  static const clay     = Color(0xFFB85C3E); // destructive / clay-red
  static const claySoft = Color(0xFFE9C5B3); // clay tint surfaces
  static const amber    = Color(0xFFC89530); // warnings, highlights

  // Companion heatmap semantics
  static const good     = Color(0xFF5E8F4A); // friendly neighbour
  static const goodSoft = Color(0xFFBCD2A8); // good cell tint
  static const bad      = Color(0xFFC25A3E); // conflict
  static const badSoft  = Color(0xFFECBFAE); // bad cell tint
  static const neutral  = Color(0xFFB8B09E); // no relationship
}
