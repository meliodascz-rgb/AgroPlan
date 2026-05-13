import 'package:flutter/material.dart';

import '../../../shared/models/plant.dart';

class PlantRow extends StatelessWidget {
  const PlantRow({super.key, required this.plant});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: plant.chipColor,
        child: Text(
          plant.letter,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      title: Text(plant.name, style: theme.textTheme.bodyLarge),
      subtitle: Text(
        plant.nameLatin,
        style: theme.textTheme.bodySmall?.copyWith(fontStyle: FontStyle.italic),
      ),
    );
  }
}
