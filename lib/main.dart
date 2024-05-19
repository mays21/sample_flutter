import "package:flutter/material.dart";

import "package:sample_flutter/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.pink(),
      ),
    ),
  );
}
