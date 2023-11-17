import 'package:flutter/material.dart';

LinearGradient GradientBackground() {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF1d5062),
      Colors.cyan.shade900,
      Colors.cyan.shade900,
      Colors.cyan.shade900,
      Colors.cyan.shade900,
      Colors.teal.shade600,
    ],
  );
}
