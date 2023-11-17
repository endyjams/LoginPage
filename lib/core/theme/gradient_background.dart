import 'package:flutter/material.dart';

LinearGradient gradientBackground() {
  return const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.1, 0.5, 0.7, 0.9],
    colors: [
      Color(0xFF074139),
      Color(0xFF125457),
      Color(0xFF38a794),
      Color(0xFF2b7c83),
    ],
  );
}
