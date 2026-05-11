import 'package:flutter/material.dart';

class BottomPad extends StatelessWidget {
  const BottomPad({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(height: MediaQuery.of(context).padding.bottom + 8);
}
