import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/router/app_router.dart';
import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/theme/theme_provider.dart';
import '../../auth/providers/auth_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c       = context.colors;
    final user    = ref.watch(currentUserProvider);
    final email   = user?.email ?? '—';
    final initial = email.isNotEmpty ? email[0].toUpperCase() : '?';

    final isDark = ref.watch(themeModeProvider).maybeWhen(
      data: (ThemeMode m) => m == ThemeMode.dark,
      orElse: () => false,
    );

    return Scaffold(
      backgroundColor: c.paper,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22, 6, 22, 0),
                child: Text(AppStrings.profile, style: AppTypography.serif(32)),
              ),
            ),

            // User card
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.fromLTRB(18, 20, 18, 0),
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: c.card,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: c.line),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 56, height: 56,
                      decoration: BoxDecoration(
                          color: c.sageSoft, shape: BoxShape.circle),
                      alignment: Alignment.center,
                      child: Text(initial,
                          style: AppTypography.serif(26)
                              .copyWith(color: c.forest)),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(email,
                              style: AppTypography.body(14)
                                  .copyWith(color: c.muted)),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: c.amber.withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 5, height: 5,
                                  decoration: BoxDecoration(
                                      color: c.amber, shape: BoxShape.circle),
                                ),
                                const SizedBox(width: 6),
                                Text(AppStrings.freeTier,
                                    style: AppTypography.mono(10,
                                        color: c.amber)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: _Group(
                title: AppStrings.preferences,
                children: [
                  const _Row(label: AppStrings.climateZone, value: 'Zóna 6b'),
                  const _Row(label: AppStrings.units,       value: AppStrings.metric),
                  const _Row(label: AppStrings.language,    value: AppStrings.czech),
                  _SwitchRow(
                    label: AppStrings.darkMode,
                    value: isDark,
                    isLast: true,
                    onChanged: (_) => ref
                        .read(themeModeProvider.notifier)
                        .toggle(),
                  ),
                ],
              ),
            ),

            const SliverToBoxAdapter(
              child: _Group(
                title: AppStrings.synchronization,
                children: [
                  _Row(
                    label: AppStrings.connectionStatus,
                    value: AppStrings.online,
                  ),
                  _Row(
                    label: AppStrings.syncNow,
                    value: '',
                    isLast: true,
                  ),
                ],
              ),
            ),

            SliverToBoxAdapter(
              child: _Group(
                title: AppStrings.account,
                children: [
                  const _Row(label: AppStrings.subscription, value: AppStrings.upgrade),
                  _Row(
                    label: AppStrings.signOut,
                    value: '',
                    valueColor: c.clay,
                    isLast: true,
                    onTap: () async {
                      await Supabase.instance.client.auth.signOut();
                      if (context.mounted) context.go(AppRoutes.login);
                    },
                  ),
                ],
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 60)),
          ],
        ),
      ),
    );
  }
}

class _Group extends StatelessWidget {
  const _Group({required this.title, required this.children});
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 22, 28, 8),
          child: Text(title, style: AppTypography.mono(10, color: c.muted)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            color: c.card,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: c.line),
          ),
          child: Column(children: children),
        ),
      ],
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({
    required this.label,
    required this.value,
    this.valueColor,
    this.isLast = false,
    this.onTap,
  });
  final String label;
  final String value;
  final Color? valueColor;
  final bool isLast;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          border: isLast
              ? null
              : Border(bottom: BorderSide(color: c.line)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label,
                style: AppTypography.body(15).copyWith(
                    color: onTap != null && valueColor == c.clay
                        ? c.clay
                        : c.ink)),
            Row(
              children: [
                if (value.isNotEmpty)
                  Text(value,
                      style: AppTypography.body(14)
                          .copyWith(color: valueColor ?? c.muted)),
                if (valueColor == null)
                  Icon(Icons.chevron_right_rounded, color: c.muted, size: 18),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SwitchRow extends StatelessWidget {
  const _SwitchRow({
    required this.label,
    required this.value,
    required this.onChanged,
    this.isLast = false,
  });
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        border: isLast ? null : Border(bottom: BorderSide(color: c.line)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: AppTypography.body(15).copyWith(color: c.ink)),
          Switch(
            value: value,
            onChanged: onChanged,
            activeThumbColor: c.forest,
            activeTrackColor: c.forest.withValues(alpha: 0.35),
          ),
        ],
      ),
    );
  }
}
