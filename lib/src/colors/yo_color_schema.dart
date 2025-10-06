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

  // bluePurple
  YoColorScheme.bluePurple: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0d0d21),
      background: Color(0xFFf5f6ff),
      primary: Color(0xFF5b4cff),
      secondary: Color(0xFF8c82ff),
      accent: Color(0xFFff4ea7),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe6e6fa),
      background: Color(0xFF0d0d1f),
      primary: Color(0xFF7c6fff),
      secondary: Color(0xFFa49bff),
      accent: Color(0xFFff6eb9),
    ),
  },

  // oceanGreen
  YoColorScheme.oceanGreen: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF002b1c),
      background: Color(0xFFf0fff8),
      primary: Color(0xFF00a878),
      secondary: Color(0xFF4ecdc4),
      accent: Color(0xFFff9f1c),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe0fff5),
      background: Color(0xFF002218),
      primary: Color(0xFF00c78e),
      secondary: Color(0xFF5de5dc),
      accent: Color(0xFFffb03d),
    ),
  },

  // redPink
  YoColorScheme.redPink: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF2b0008),
      background: Color(0xFFfff5f7),
      primary: Color(0xFFe4002b),
      secondary: Color(0xFFff7b9c),
      accent: Color(0xFF00c0cc),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFffe6eb),
      background: Color(0xFF1f0005),
      primary: Color(0xFFff1a47),
      secondary: Color(0xFFff8fb0),
      accent: Color(0xFF00d9e6),
    ),
  },

  // slateIndigo
  YoColorScheme.slateIndigo: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0f111a),
      background: Color(0xFFf7f8fd),
      primary: Color(0xFF3f4c8a),
      secondary: Color(0xFF6b76c4),
      accent: Color(0xFFf9c24e),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf0f2ff),
      background: Color(0xFF0a0c15),
      primary: Color(0xFF5a6abf),
      secondary: Color(0xFF8a94e4),
      accent: Color(0xFFffd063),
    ),
  },

  // leafYellow
  YoColorScheme.leafYellow: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1a1a00),
      background: Color(0xFFfefff0),
      primary: Color(0xFF6ea31a),
      secondary: Color(0xFFa8c832),
      accent: Color(0xFFff6b35),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfdffe6),
      background: Color(0xFF121200),
      primary: Color(0xFF8bc34a),
      secondary: Color(0xFFc3d84b),
      accent: Color(0xFFff8555),
    ),
  },

  // magentaNavy
  YoColorScheme.magentaNavy: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF0b0b28),
      background: Color(0xFFfafaff),
      primary: Color(0xFFd5007f),
      secondary: Color(0xFF3f51b5),
      accent: Color(0xFF00e5c9),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFf0f0ff),
      background: Color(0xFF07071e),
      primary: Color(0xFFff0984),
      secondary: Color(0xFF5c6bc0),
      accent: Color(0xFF1ff8df),
    ),
  },

  // mintGreen
  YoColorScheme.mintGreen: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF002e1f),
      background: Color(0xFFf0fffa),
      primary: Color(0xFF00b894),
      secondary: Color(0xFF55efc4),
      accent: Color(0xFFfd79a8),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe6fff7),
      background: Color(0xFF001a12),
      primary: Color(0xFF00d9a0),
      secondary: Color(0xFF73ffd2),
      accent: Color(0xFFff9bc0),
    ),
  },

  // clayBeige
  YoColorScheme.clayBeige: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF2a1e13),
      background: Color(0xFFfdf8f2),
      primary: Color(0xFFa06a46),
      secondary: Color(0xFFd8a070),
      accent: Color(0xFF5e9e7f),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfdf2e6),
      background: Color(0xFF1a120c),
      primary: Color(0xFFc0875c),
      secondary: Color(0xFFe8b880),
      accent: Color(0xFF7bc097),
    ),
  },

  // coralNavy
  YoColorScheme.coralNavy: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF001f3f),
      background: Color(0xFFf5f9ff),
      primary: Color(0xFFff6f61),
      secondary: Color(0xFF003366),
      accent: Color(0xFFffd166),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe6f2ff),
      background: Color(0xFF001429),
      primary: Color(0xFFff8a7a),
      secondary: Color(0xFF004c8c),
      accent: Color(0xFFffe18a),
    ),
  },

  // honeyAmber
  YoColorScheme.honeyAmber: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF1f1600),
      background: Color(0xFFfffcf0),
      primary: Color(0xFFffb703),
      secondary: Color(0xFFfb8500),
      accent: Color(0xFF8ac926),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFfff8e1),
      background: Color(0xFF1a1200),
      primary: Color(0xFFffc733),
      secondary: Color(0xFFff981a),
      accent: Color(0xFFa1d144),
    ),
  },

  // blushRose
  YoColorScheme.blushRose: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF2e0d14),
      background: Color(0xFFfff5f7),
      primary: Color(0xFFe85a82),
      secondary: Color(0xFFd499b9),
      accent: Color(0xFF4ecdc4),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFffeef2),
      background: Color(0xFF1a080d),
      primary: Color(0xFFff7599),
      secondary: Color(0xFFe8b5cc),
      accent: Color(0xFF5de5dc),
    ),
  },

  // tealEvergreen
  YoColorScheme.tealEvergreen: {
    Brightness.light: const YoCorePalette(
      text: Color(0xFF002b2b),
      background: Color(0xFFf0fffe),
      primary: Color(0xFF008080),
      secondary: Color(0xFF2e8b57),
      accent: Color(0xFFffa62b),
    ),
    Brightness.dark: const YoCorePalette(
      text: Color(0xFFe6fffe),
      background: Color(0xFF001a1a),
      primary: Color(0xFF00a3a3),
      secondary: Color(0xFF40b070),
      accent: Color(0xFFffb950),
    ),
  },
};
