import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/router/app_router.dart';
import '../../core/strings/app_strings.dart';
import '../../core/theme/app_theme_colors.dart';
import '../../core/theme/app_typography.dart';

class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.child});
  final Widget child;

  static const _tabs = [AppRoutes.dashboard, AppRoutes.catalog, AppRoutes.profile];

  int _currentIndex(String location) {
    if (location.startsWith('/catalog')) return 1;
    if (location.startsWith('/profile')) return 2;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final c        = context.colors;
    final location = GoRouterState.of(context).matchedLocation;
    final idx      = _currentIndex(location);

    return Scaffold(
      body: child,
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          color: c.card,
          border: Border(top: BorderSide(color: c.line, width: 0.5)),
        ),
        child: BottomNavigationBar(
          currentIndex: idx,
          onTap: (i) => context.go(_tabs[i]),
          backgroundColor: Colors.transparent,
          selectedItemColor: c.forest,
          unselectedItemColor: c.muted,
          selectedLabelStyle: AppTypography.mono(10, color: c.forest),
          unselectedLabelStyle: AppTypography.mono(10, color: c.muted),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined),
              activeIcon: Icon(Icons.grid_view_rounded),
              label: AppStrings.navOverview,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.eco_outlined),
              activeIcon: Icon(Icons.eco),
              label: AppStrings.navCatalog,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              activeIcon: Icon(Icons.person_rounded),
              label: AppStrings.navProfile,
            ),
          ],
        ),
      ),
    );
  }
}
