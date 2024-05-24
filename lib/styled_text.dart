import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(255, 255, 180, 221),
          // fontSize: 14,
        ),
      ),
    );
  }
}
