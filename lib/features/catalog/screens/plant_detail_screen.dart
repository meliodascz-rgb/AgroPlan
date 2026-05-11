import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class PlantDetailScreen extends StatelessWidget {
  const PlantDetailScreen({super.key, required this.plantId});

  final String plantId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.paper,
      body: Center(child: Placeholder()),
    );
  }
}
