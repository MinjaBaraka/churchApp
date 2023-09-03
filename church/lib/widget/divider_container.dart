import 'package:flutter/material.dart';

class DividerContainer extends StatelessWidget {
  final double height;
  final Color? color;
  final Widget? child;
  const DividerContainer({
    super.key,
    required this.height,
    this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
      ),
      child: child,
    );
  }
}
