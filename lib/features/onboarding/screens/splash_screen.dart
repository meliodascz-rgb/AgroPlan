import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/app_router.dart';
import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../providers/onboarding_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  Future<void> _navigate() async {
    final done = await ref.read(onboardingProvider.future);
    if (mounted) {
      context.go(done ? AppRoutes.dashboard : AppRoutes.onboarding);
    }
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Scaffold(
      backgroundColor: c.paper,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.eco, size: 72, color: c.forest),
            const SizedBox(height: 16),
            Text(AppStrings.appName, style: AppTypography.serif(36)),
            const SizedBox(height: 4),
            Text(AppStrings.appVersion, style: AppTypography.mono(12, color: c.muted)),
            const SizedBox(height: 32),
            Text(AppStrings.splashLoading, style: AppTypography.mono(11, color: c.muted)),
          ],
        ),
      ),
    );
  }
}
