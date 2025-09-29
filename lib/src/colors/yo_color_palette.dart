import 'package:flutter/material.dart';

class YoColorPalette {
  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.toARGB32(), {
      50: color.withValues(alpha: 0.1),
      100: color.withValues(alpha: 0.2),
      200: color.withValues(alpha: 0.3),
      300: color.withValues(alpha: 0.4),
      400: color.withValues(alpha: 0.5),
      500: color.withValues(alpha: 0.6),
      600: color.withValues(alpha: 0.7),
      700: color.withValues(alpha: 0.8),
      800: color.withValues(alpha: 0.9),
      900: color.withValues(alpha: 1.0),
    });
  }

  static List<Color> generateShades(Color baseColor, int numberOfShades) {
    final List<Color> shades = [];
    for (int i = 0; i < numberOfShades; i++) {
      final double opacity = (i + 1) / numberOfShades;
      shades.add(baseColor.withValues(alpha: opacity));
    }
    return shades;
  }
}
