import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/app_router.dart';
import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../shared/models/field.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/fields_provider.dart';
import '../widgets/ai_tip_widget.dart';
import '../widgets/field_card.dart';
import 'create_field_modal.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  Future<void> _openCreateModal(BuildContext context, WidgetRef ref) async {
    final fieldId = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const CreateFieldModal(),
    );
    if (fieldId != null && context.mounted) {
      ref.invalidate(fieldsProvider);
      context.push(AppRoutes.fieldEditorPath(fieldId));
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c           = context.colors;
    final fieldsAsync = ref.watch(fieldsProvider);
    final user        = ref.watch(currentUserProvider);

    final initial = user?.email?.isNotEmpty == true
        ? user!.email![0].toUpperCase()
        : '?';

    return Scaffold(
      backgroundColor: c.paper,
      floatingActionButton: _Fab(
        onTap: () => _openCreateModal(context, ref),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _Header(initial: initial)),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.fromLTRB(22, 20, 22, 0),
                child: AiTipWidget(
                  tip: 'Zkuste letos po rajčatech luštěniny — půda si odpočine a získá dusík.',
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: fieldsAsync.when(
                loading: () => const Padding(
                  padding: EdgeInsets.only(top: 48),
                  child: Center(child: CircularProgressIndicator()),
                ),
                error: (e, _) => Padding(
                  padding: const EdgeInsets.all(22),
                  child: Text('Chyba: $e'),
                ),
                data: (fields) => _FieldsSection(
                  fields: fields,
                  onAddTap: () => _openCreateModal(context, ref),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 80)),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.initial});
  final String initial;

  @override
  Widget build(BuildContext context) {
    final c   = context.colors;
    final now = DateTime.now();
    final dateStr = '${now.day}. ${AppStrings.months[now.month - 1].toUpperCase()}, '
        '${AppStrings.weekdays[now.weekday - 1].toUpperCase()}';

    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 6, 22, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(dateStr, style: AppTypography.mono(10, color: c.muted)),
                const SizedBox(height: 2),
                Text(AppStrings.dashboardGreeting, style: AppTypography.serif(32)),
              ],
            ),
          ),
          Container(
            width: 40, height: 40,
            decoration: BoxDecoration(color: c.sageSoft, shape: BoxShape.circle),
            alignment: Alignment.center,
            child: Text(initial,
                style: AppTypography.serif(18).copyWith(color: c.forest)),
          ),
        ],
      ),
    );
  }
}

class _FieldsSection extends StatelessWidget {
  const _FieldsSection({required this.fields, required this.onAddTap});
  final List<Field> fields;
  final VoidCallback onAddTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(22, 24, 22, 10),
          child: Text(
            '${AppStrings.dashboardMyFields} · ${fields.length}',
            style: AppTypography.mono(11, color: c.muted),
          ),
        ),
        if (fields.isEmpty)
          _EmptyState(onTap: onAddTap)
        else
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.85,
              ),
              itemCount: fields.length,
              itemBuilder: (context, i) => GestureDetector(
                onTap: () => context.push(AppRoutes.fieldEditorPath(fields[i].id)),
                child: FieldCard(field: fields[i]),
              ),
            ),
          ),
      ],
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.fromLTRB(22, 8, 22, 0),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: c.card,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: c.line),
        ),
        child: Row(
          children: [
            Container(
              width: 44, height: 44,
              decoration: BoxDecoration(
                color: c.forest.withValues(alpha: 0.10),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(Icons.add_rounded, color: c.forest, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.dashboardEmptyTitle,
                      style: AppTypography.serif(17)),
                  const SizedBox(height: 2),
                  Text(AppStrings.dashboardEmptyBody,
                      style: AppTypography.body(13).copyWith(color: c.muted)),
                ],
              ),
            ),
            Icon(Icons.chevron_right_rounded, color: c.muted, size: 20),
          ],
        ),
      ),
    );
  }
}

class _Fab extends StatelessWidget {
  const _Fab({required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60, height: 60,
        decoration: BoxDecoration(
          color: c.forest,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: c.forestDeep.withValues(alpha: 0.35),
              blurRadius: 24, offset: const Offset(0, 12),
            ),
            BoxShadow(
              color: c.forestDeep.withValues(alpha: 0.18),
              blurRadius: 8, offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Icon(Icons.add_rounded, color: c.paper, size: 26),
      ),
    );
  }
}
