import 'package:flutter/material.dart';

class TheCardWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  const TheCardWidget({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: padding ?? const EdgeInsets.all(8),
        child: child,
      ),
    );
  }
}
