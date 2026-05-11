import 'package:flutter/material.dart';

class TopPad extends StatelessWidget {
  const TopPad({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(height: MediaQuery.of(context).padding.top);
}
