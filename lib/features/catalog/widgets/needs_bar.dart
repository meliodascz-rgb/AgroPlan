import 'package:flutter/material.dart';

class NeedsBar extends StatelessWidget {
  const NeedsBar({super.key, required this.label, required this.value});

  final String label; // 'Slunce', 'Voda', 'Prostor'
  final int value;    // 1–3

  @override
  Widget build(BuildContext context) => const Placeholder();
}
