import 'package:flutter/material.dart';

class CircleIndicator extends StatelessWidget {
  const CircleIndicator({Key? key, required this.healthy}) : super(key: key);

  final bool healthy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              healthy ? Colors.green.withAlpha(100) : Colors.red.withAlpha(100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: healthy ? const Color(0xFF50B86C) : Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
