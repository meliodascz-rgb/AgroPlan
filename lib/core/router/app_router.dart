import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/onboarding/screens/splash_screen.dart';
import '../../features/onboarding/screens/walkthrough_screen.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/dashboard/screens/dashboard_screen.dart';
import '../../features/editor/screens/field_editor_screen.dart';
import '../../features/editor/screens/field_settings_modal.dart';
import '../../features/catalog/screens/catalog_screen.dart';
import '../../features/catalog/screens/plant_detail_screen.dart';
import '../../features/profile/screens/profile_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        builder: (_, __) => const WalkthroughScreen(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (_, __) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.dashboard,
        builder: (_, __) => const DashboardScreen(),
      ),
      GoRoute(
        path: AppRoutes.fieldEditor,
        builder: (context, state) {
          final fieldId = state.pathParameters['id']!;
          return FieldEditorScreen(fieldId: fieldId);
        },
        routes: [
          GoRoute(
            path: 'settings',
            builder: (context, state) {
              final fieldId = state.pathParameters['id']!;
              return FieldSettingsModal(fieldId: fieldId);
            },
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.catalog,
        builder: (_, __) => const CatalogScreen(),
        routes: [
          GoRoute(
            path: ':plantId',
            builder: (context, state) {
              final plantId = state.pathParameters['plantId']!;
              return PlantDetailScreen(plantId: plantId);
            },
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.profile,
        builder: (_, __) => const ProfileScreen(),
      ),
    ],
  );
}

abstract final class AppRoutes {
  static const splash      = '/splash';
  static const onboarding  = '/onboarding';
  static const login       = '/login';
  static const dashboard   = '/dashboard';
  static const fieldEditor = '/field/:id/editor';
  static const catalog     = '/catalog';
  static const profile     = '/profile';

  static String fieldEditorPath(String id) => '/field/$id/editor';
  static String fieldSettingsPath(String id) => '/field/$id/editor/settings';
  static String plantDetailPath(String plantId) => '/catalog/$plantId';
}
