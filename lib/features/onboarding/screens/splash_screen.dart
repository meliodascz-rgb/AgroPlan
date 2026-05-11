import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paper,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.eco, size: 72, color: AppColors.forest),
            const SizedBox(height: 16),
            Text('AgroPlan', style: AppTypography.serif(36)),
            const SizedBox(height: 4),
            Text('AI · v 0.1', style: AppTypography.mono(12)),
            const SizedBox(height: 32),
            Text('NAČÍTÁNÍ ZNALOSTÍ PŮDY…', style: AppTypography.mono(11)),
          ],
        ),
      ),
    );
  }
}
