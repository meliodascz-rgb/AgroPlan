import 'package:flutter/material.dart';
import '../../../shared/models/placement.dart';

class SeasonSwitcher extends StatelessWidget {
  const SeasonSwitcher({
    super.key,
    required this.year,
    required this.season,
    required this.onChanged,
  });

  final int year;
  final Season season;
  final void Function(int year, Season season) onChanged;

  @override
  Widget build(BuildContext context) => const Placeholder();
}
