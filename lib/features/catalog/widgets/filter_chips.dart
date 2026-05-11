import 'package:flutter/material.dart';

class CatalogFilterChips extends StatelessWidget {
  const CatalogFilterChips({super.key, required this.selected, required this.onSelected});

  final String selected;
  final void Function(String) onSelected;

  static const filters = ['Vše', 'Do stínu', 'Fixují dusík', 'Aromatické', 'Lilkovité'];

  @override
  Widget build(BuildContext context) => const Placeholder();
}
