import 'package:flutter/material.dart';

LinearGradient GradientBackground() {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.tealAccent.shade700,
      Colors.cyan.shade900,
      Colors.teal.shade800,
      Colors.cyan.shade800,
      Colors.teal.shade700,
      Colors.cyan.shade700,
    ],
  );
}
