import 'package:flutter/material.dart';

import '../../yo_ui.dart';

enum YoColorScheme {
  defaultScheme, // skema lama
  bluePurple,    // skema baru
  oceanGreen,    // skema lain
}

/// 1 map → isinya light & dark sekaligus
final Map<YoColorScheme, Map<Brightness, YoCorePalette>> kYoPalettes = {
  YoColorScheme.defaultScheme: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF010509),
      background: Color(0xFFf1f8fe),
      primary: Color(0xFF9ec5e6),
      secondary: Color(0xFFf188da),
      accent: Color(0xFFec5163),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf6fafe),
      background: Color(0xFF01080e),
      primary: Color(0xFF194161),
      secondary: Color(0xFF770e60),
      accent: Color(0xFFae1325),
    ),
  },

  YoColorScheme.bluePurple: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1a1a2e),
      background: Color(0xFFf6f6ff),
      primary: Color(0xFF5f7adb),
      secondary: Color(0xFF8e44ad),
      accent: Color(0xFF3f37c9),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe0e0ff),
      background: Color(0xFF0f0c29),
      primary: Color(0xFF3f37c9),
      secondary: Color(0xFF8e44ad),
      accent: Color(0xFF5f7adb),
    ),
  },

  YoColorScheme.oceanGreen: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0b3954),
      background: Color(0xFFe8f4f8),
      primary: Color(0xFF0891b2),
      secondary: Color(0xFF06b6d4),
      accent: Color(0xFF22d3ee),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe0f2fe),
      background: Color(0xFF0c1a21),
      primary: Color(0xFF0e7490),
      secondary: Color(0xFF0891b2),
      accent: Color(0xFF06b6d4),
    ),
  },
};