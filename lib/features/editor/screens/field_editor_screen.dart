import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class FieldEditorScreen extends StatelessWidget {
  const FieldEditorScreen({super.key, required this.fieldId});

  final String fieldId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.paper,
      body: Center(child: Placeholder()),
    );
  }
}
