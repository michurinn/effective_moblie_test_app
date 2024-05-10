import 'package:flutter/material.dart';

class ColoredCircleWidget extends StatelessWidget {
  final Color color;
  const ColoredCircleWidget({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: const SizedBox(
        height: 24,
        width: 24,
      ),
    );
  }
}
