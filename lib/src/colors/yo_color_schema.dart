import 'package:flutter/material.dart';

import '../../yo_ui.dart';

enum YoColorScheme {
  defaultScheme, // skema lama
  bluePurple, // skema baru
  oceanGreen, // skema lain
  redPink,
  slateIndigo,
  leafYellow,
  magentaNavy,
  mintGreen,
  clayBeige,
  coralNavy,
  honeyAmber,
  blushRose,
  tealEvergreen,
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
  YoColorScheme.redPink: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF180608),
      background: Color(0xFFfdf7f8),
      primary: Color(0xFFff3352),
      secondary: Color(0xFFe5d39a),
      accent: Color(0xFFcad661),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf9e7e9),
      background: Color(0xFF080203),
      primary: Color(0xFFcc001f),
      secondary: Color(0xFF65541a),
      accent: Color(0xFF929e29),
    ),
  },

  YoColorScheme.slateIndigo: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0b0d14),
      background: Color(0xFFf1f3f8),
      primary: Color(0xFF303440),
      secondary: Color(0xFF98a9d7),
      accent: Color(0xFF6c85cb),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFebedf4),
      background: Color(0xFF07090e),
      primary: Color(0xFFbfc3cf),
      secondary: Color(0xFF283967),
      accent: Color(0xFF344d93),
    ),
  },

  YoColorScheme.leafYellow: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF100e04),
      background: Color(0xFFfbfaf4),
      primary: Color(0xFFffe66b),
      secondary: Color(0xFF9ce2a0),
      accent: Color(0xFF64d39c),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfbf9ef),
      background: Color(0xFF0b0a04),
      primary: Color(0xFF947b00),
      secondary: Color(0xFF1d6320),
      accent: Color(0xFF2c9b63),
    ),
  },

  YoColorScheme.magentaNavy: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF020125),
      background: Color(0xFFededff),
      primary: Color(0xFF2e2e60),
      secondary: Color(0xFFfc71ca),
      accent: Color(0xFFfb426d),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFdddcfe),
      background: Color(0xFF000014),
      primary: Color(0xFF9f9fd1),
      secondary: Color(0xFF8c035a),
      accent: Color(0xFFbe042f),
    ),
  },

  YoColorScheme.mintGreen: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF050c08),
      background: Color(0xFFf1f9f5),
      primary: Color(0xFF6fb38d),
      secondary: Color(0xFF9fdad4),
      accent: Color(0xFF73c3c8),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf4faf7),
      background: Color(0xFF060e0a),
      primary: Color(0xFF4c9069),
      secondary: Color(0xFF255f5a),
      accent: Color(0xFF36868c),
    ),
  },

  YoColorScheme.clayBeige: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0b0704),
      background: Color(0xFFfaf6f3),
      primary: Color(0xFFE2A16F),
      secondary: Color(0xFFD1D3D4),
      accent: Color(0xFF86B0BD),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfbf7f4),
      background: Color(0xFF0b0705),
      primary: Color(0xFF904f1d),
      secondary: Color(0xFF2a2c2d),
      accent: Color(0xFF436d7a),
    ),
  },

  YoColorScheme.coralNavy: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF020c16),
      background: Color(0xFFf6fafe),
      primary: Color(0xFF143F6B),
      secondary: Color(0xFFf386b8),
      accent: Color(0xFFee7855),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe8f2fd),
      background: Color(0xFF010509),
      primary: Color(0xFF93bfeb),
      secondary: Color(0xFF790c3f),
      accent: Color(0xFFac3511),
    ),
  },
  YoColorScheme.honeyAmber: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF070705),
      background: Color(0xFFfbfaf8),
      primary: Color(0xFFFEB139),
      secondary: Color(0xFFe6c187),
      accent: Color(0xFFeeb65b),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfbfbf9),
      background: Color(0xFF060604),
      primary: Color(0xFFc67a01),
      secondary: Color(0xFF775218),
      accent: Color(0xFFa26a11),
    ),
  },

  YoColorScheme.blushRose: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF150f0f),
      background: Color(0xFFfbf9f9),
      primary: Color(0xFFf08a8a),
      secondary: Color(0xFFffc8a8),
      accent: Color(0xFFF8FAB4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf0eaea),
      background: Color(0xFF060404),
      primary: Color(0xFF750f0f),
      secondary: Color(0xFF572000),
      accent: Color(0xFF4a4d05),
    ),
  },

  YoColorScheme.tealEvergreen: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF101413),
      background: Color(0xFFe9f1ef),
      primary: Color(0xFF004232),
      secondary: Color(0xFFa2d2c6),
      accent: Color(0xFF38ad90),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFecf0ef),
      background: Color(0xFF0f1715),
      primary: Color(0xFFbdffee),
      secondary: Color(0xFF2d5d51),
      accent: Color(0xFF51c6a9),
    ),
  },
};
