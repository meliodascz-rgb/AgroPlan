import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/repositories/field_repository.dart';
import '../../../core/strings/app_strings.dart';
import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../auth/providers/auth_provider.dart';

class CreateFieldModal extends ConsumerStatefulWidget {
  const CreateFieldModal({super.key});

  @override
  ConsumerState<CreateFieldModal> createState() => _CreateFieldModalState();
}

class _CreateFieldModalState extends ConsumerState<CreateFieldModal> {
  final _nameController = TextEditingController();
  int  _cols     = 8;
  int  _rows     = 6;
  int  _cellSize = AppConstants.defaultCellSizeCm;
  bool _loading  = false;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final name = _nameController.text.trim();
    if (name.isEmpty) return;

    final user = ref.read(currentUserProvider);
    if (user == null) return;

    setState(() => _loading = true);
    try {
      final field = await ref.read(fieldRepositoryProvider).createField(
            userId:     user.id,
            name:       name,
            cols:       _cols,
            rows:       _rows,
            cellSizeCm: _cellSize,
          );
      if (mounted) Navigator.of(context).pop(field.id);
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text(AppStrings.createFieldError)),
        );
        setState(() => _loading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final bottom = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      padding: EdgeInsets.fromLTRB(0, 14, 0, 32 + bottom),
      decoration: BoxDecoration(
        color: c.paper,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Drag handle
          Container(
            width: 40, height: 4,
            margin: const EdgeInsets.only(bottom: 18),
            decoration: BoxDecoration(
              color: c.line,
              borderRadius: BorderRadius.circular(100),
            ),
          ),

          // Title row
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 0, 22, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.createFieldTitle, style: AppTypography.serif(26)),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(null),
                  child: Text(
                    AppStrings.cancel,
                    style: AppTypography.body(14).copyWith(color: c.muted),
                  ),
                ),
              ],
            ),
          ),

          // Name input
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 0, 22, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.fieldNameLabel,
                    style: AppTypography.mono(10, color: c.muted)),
                const SizedBox(height: 8),
                TextField(
                  controller: _nameController,
                  autofocus: true,
                  textCapitalization: TextCapitalization.sentences,
                  style: AppTypography.body(15).copyWith(color: c.ink),
                  decoration: InputDecoration(
                    hintText: AppStrings.fieldNameHint,
                    hintStyle: AppTypography.body(15).copyWith(color: c.muted),
                    filled: true,
                    fillColor: c.card,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: c.line),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: c.line),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: c.forest, width: 1.5),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Cols + Rows pickers
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 0, 22, 18),
            child: Row(
              children: [
                Expanded(
                  child: _DimensionPicker(
                    label: AppStrings.colsLabel,
                    value: _cols,
                    onDecrement: _cols > 2
                        ? () => setState(() => _cols--)
                        : null,
                    onIncrement: _cols < 20
                        ? () => setState(() => _cols++)
                        : null,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _DimensionPicker(
                    label: AppStrings.rowsLabel,
                    value: _rows,
                    onDecrement: _rows > 2
                        ? () => setState(() => _rows--)
                        : null,
                    onIncrement: _rows < 20
                        ? () => setState(() => _rows++)
                        : null,
                  ),
                ),
              ],
            ),
          ),

          // Cell size picker
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 0, 22, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.cellSizeLabel,
                    style: AppTypography.mono(10, color: c.muted)),
                const SizedBox(height: 10),
                Row(
                  children: AppConstants.cellSizeOptions.map((cm) {
                    final isSelected = _cellSize == cm;
                    return Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => _cellSize = cm),
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: isSelected ? c.forest : c.paper,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected ? c.forest : c.line,
                            ),
                          ),
                          child: Text(
                            '$cm cm',
                            style: AppTypography.body(13).copyWith(
                              color: isSelected ? c.paper : c.ink,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),

          // Submit button
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _loading ? null : _submit,
                style: FilledButton.styleFrom(
                  backgroundColor: c.forest,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
                child: _loading
                    ? SizedBox(
                        width: 20, height: 20,
                        child: CircularProgressIndicator(
                          color: c.paper, strokeWidth: 2,
                        ),
                      )
                    : Text(
                        AppStrings.createFieldSubmit,
                        style: AppTypography.body(15, weight: FontWeight.w600)
                            .copyWith(color: c.paper),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DimensionPicker extends StatelessWidget {
  const _DimensionPicker({
    required this.label,
    required this.value,
    required this.onDecrement,
    required this.onIncrement,
  });

  final String       label;
  final int          value;
  final VoidCallback? onDecrement;
  final VoidCallback? onIncrement;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTypography.mono(10, color: c.muted)),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: c.card,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: c.line),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _StepButton(
                icon: Icons.remove_rounded,
                onTap: onDecrement,
              ),
              Text(
                '$value',
                style: AppTypography.body(17, weight: FontWeight.w600)
                    .copyWith(color: c.ink),
              ),
              _StepButton(
                icon: Icons.add_rounded,
                onTap: onIncrement,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _StepButton extends StatelessWidget {
  const _StepButton({required this.icon, required this.onTap});
  final IconData     icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Icon(
          icon,
          size: 20,
          color: onTap != null ? c.ink : c.muted,
        ),
      ),
    );
  }
}
