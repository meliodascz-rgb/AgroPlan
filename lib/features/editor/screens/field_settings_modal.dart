import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/repositories/field_repository.dart';
import '../../../core/router/app_router.dart';
import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../dashboard/providers/fields_provider.dart';

class FieldSettingsModal extends ConsumerStatefulWidget {
  const FieldSettingsModal({super.key, required this.fieldId});

  final String fieldId;

  @override
  ConsumerState<FieldSettingsModal> createState() => _FieldSettingsModalState();
}

class _FieldSettingsModalState extends ConsumerState<FieldSettingsModal> {
  bool _loading = false;

  Future<void> _setCellSize(int cm) async {
    setState(() => _loading = true);
    try {
      await ref
          .read(fieldRepositoryProvider)
          .updateFieldCellSize(widget.fieldId, cm);
      ref.invalidate(fieldsProvider);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _rename() async {
    final field = ref.read(fieldsProvider).maybeWhen(
          data: (v) => v,
          orElse: () => null,
        )?.where((f) => f.id == widget.fieldId).toList().firstOrNull;
    if (field == null) return;

    final controller = TextEditingController(text: field.name);

    final newName = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: context.colors.paper,
        title: Text(AppStrings.rename, style: AppTypography.serif(20)),
        content: TextField(
          controller: controller,
          autofocus: true,
          textCapitalization: TextCapitalization.sentences,
          style: AppTypography.body(15),
          decoration: InputDecoration(
            hintText: AppStrings.renameFieldHint,
            hintStyle:
                AppTypography.body(15).copyWith(color: context.colors.muted),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(null),
            child: Text(AppStrings.cancel,
                style: AppTypography.body(14)
                    .copyWith(color: context.colors.muted)),
          ),
          TextButton(
            onPressed: () {
              final v = controller.text.trim();
              Navigator.of(ctx).pop(v.isEmpty ? null : v);
            },
            child: Text(AppStrings.done,
                style: AppTypography.body(14)
                    .copyWith(color: context.colors.forest)),
          ),
        ],
      ),
    );

    controller.dispose();
    if (newName == null || !mounted) return;

    setState(() => _loading = true);
    try {
      await ref
          .read(fieldRepositoryProvider)
          .updateFieldName(widget.fieldId, newName);
      ref.invalidate(fieldsProvider);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _delete() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: context.colors.paper,
        title: Text(AppStrings.deleteConfirmTitle,
            style: AppTypography.serif(20)),
        content: Text(AppStrings.deleteConfirmBody,
            style: AppTypography.body(14)
                .copyWith(color: context.colors.muted)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(AppStrings.cancel,
                style: AppTypography.body(14)
                    .copyWith(color: context.colors.muted)),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(AppStrings.deleteConfirmAction,
                style: AppTypography.body(14)
                    .copyWith(color: context.colors.clay)),
          ),
        ],
      ),
    );

    if (confirmed != true || !mounted) return;

    setState(() => _loading = true);
    try {
      await ref.read(fieldRepositoryProvider).deleteField(widget.fieldId);
      ref.invalidate(fieldsProvider);
      if (mounted) context.go(AppRoutes.dashboard);
    } catch (_) {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final c      = context.colors;
    final fields = ref.watch(fieldsProvider).maybeWhen(
          data: (v) => v,
          orElse: () => null,
        );
    final field =
        fields?.where((f) => f.id == widget.fieldId).toList().firstOrNull;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          GestureDetector(
            onTap: () => context.pop(),
            child: Container(color: const Color(0x72141E12)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: c.paper,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(28)),
              ),
              padding: const EdgeInsets.fromLTRB(0, 14, 0, 38),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Drag handle
                  Container(
                    width: 40, height: 4,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: c.line,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),

                  // Title + done
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppStrings.fieldSettings,
                                style:
                                    AppTypography.mono(10, color: c.muted)),
                            const SizedBox(height: 2),
                            Text(field?.name ?? '…',
                                style: AppTypography.serif(26)),
                          ],
                        ),
                        GestureDetector(
                          onTap: _loading ? null : () => context.pop(),
                          child: Text(AppStrings.done,
                              style: AppTypography.body(14)
                                  .copyWith(color: c.forest)),
                        ),
                      ],
                    ),
                  ),

                  // Cell size picker
                  if (field != null)
                    Container(
                      margin: const EdgeInsets.fromLTRB(18, 0, 18, 14),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: c.card,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: c.line),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppStrings.cellSizeLabel,
                              style:
                                  AppTypography.mono(10, color: c.muted)),
                          const SizedBox(height: 10),
                          Row(
                            children: [20, 30, 50, 100].map((cm) {
                              final isSelected = field.cellSizeCm == cm;
                              return Expanded(
                                child: GestureDetector(
                                  onTap: _loading
                                      ? null
                                      : () => _setCellSize(cm),
                                  child: Container(
                                    margin:
                                        const EdgeInsets.only(right: 8),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? c.forest
                                          : c.paper,
                                      borderRadius:
                                          BorderRadius.circular(12),
                                      border: Border.all(
                                        color: isSelected
                                            ? c.forest
                                            : c.line,
                                      ),
                                    ),
                                    child: Text(
                                      '$cm cm',
                                      style: AppTypography.body(13)
                                          .copyWith(
                                        color: isSelected
                                            ? c.paper
                                            : c.ink,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '1 buňka = ${field.cellSizeCm} × '
                            '${field.cellSizeCm} cm'
                            ' · pole ${field.cols} × ${field.rows} buněk',
                            style:
                                AppTypography.mono(10, color: c.muted),
                          ),
                        ],
                      ),
                    ),

                  // Rename + Delete buttons
                  Padding(
                    padding:
                        const EdgeInsets.fromLTRB(18, 0, 18, 0),
                    child: _loading
                        ? const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 14),
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Row(
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: _rename,
                                  style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    side: BorderSide(color: c.line),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14)),
                                  ),
                                  child: Text(AppStrings.rename,
                                      style: AppTypography.body(14,
                                              weight: FontWeight.w500)
                                          .copyWith(color: c.ink)),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: FilledButton(
                                  onPressed: _delete,
                                  style: FilledButton.styleFrom(
                                    backgroundColor:
                                        c.clay.withValues(alpha: 0.13),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14)),
                                  ),
                                  child: Text(AppStrings.deleteField,
                                      style: AppTypography.body(14,
                                              weight: FontWeight.w500)
                                          .copyWith(color: c.clay)),
                                ),
                              ),
                            ],
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
