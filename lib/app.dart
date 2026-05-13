import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/router/app_router.dart';
import 'core/strings/app_strings.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_provider.dart';

class AgroPlanApp extends ConsumerWidget {
  const AgroPlanApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router    = ref.watch(appRouterProvider);
    final themeMode = ref.watch(themeModeProvider).maybeWhen(
      data: (ThemeMode m) => m,
      orElse: () => ThemeMode.system,
    );

    return MaterialApp.router(
      title:                      AppStrings.appName,
      theme:                      AppTheme.light,
      darkTheme:                  AppTheme.dark,
      themeMode:                  themeMode,
      routerConfig:               router,
      debugShowCheckedModeBanner: false,
    );
  }
}
