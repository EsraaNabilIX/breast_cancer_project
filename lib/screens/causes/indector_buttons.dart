import 'package:flutter/material.dart';

class IndicatorDots extends StatelessWidget {
  const IndicatorDots({Key? key, required this.isActive}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 6,
      decoration: BoxDecoration(
          color: isActive ? Colors.black : const Color(0xfffdb9c8),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
