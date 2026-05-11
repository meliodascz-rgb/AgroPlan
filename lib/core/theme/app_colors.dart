import 'package:flutter/material.dart';

// Direct mapping from the T design tokens defined in resources/screens-shared.jsx
abstract final class AppColors {
  static const paper  = Color(0xFFF5F1E8); // warm cream background
  static const card   = Color(0xFFEFEBE0);
  static const ink    = Color(0xFF1A2419); // dark forest text
  static const muted  = Color(0xFF6B7A67); // secondary text

  static const forest = Color(0xFF2D5016);
  static const sage   = Color(0xFF6B8C4E);
  static const leaf   = Color(0xFF8FB573);

  static const clay   = Color(0xFFA0522D);
  static const amber  = Color(0xFFD4920A);

  // Companion heatmap semantics
  static const good   = Color(0xFF4CAF50);
  static const bad    = Color(0xFFE53935);
  static const neutral = Color(0xFFBCB49A);
}
