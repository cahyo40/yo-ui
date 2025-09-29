import 'package:flutter/material.dart';

import '../../yo_ui.dart';

class YoTheme {
  static ThemeData lightTheme(BuildContext ctx) => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: YoColors.lightPrimary,
      onPrimary: YoColors.lightText,
      secondary: YoColors.lightSecondary,
      onSecondary: YoColors.lightText,
      surface: YoColors.lightGray50,
      onSurface: YoColors.lightText,
      error: YoColors.lightError,
      onError: YoColors.white,
      surfaceContainerHighest: YoColors.lightGray100,
    ),
    dropdownMenuTheme: YoDropdownTheme.light(ctx),
    scaffoldBackgroundColor: YoColors.lightBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: YoColors.lightBackground,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: YoColors.lightText),
      titleTextStyle: TextStyle(
        color: YoColors.lightText,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 2,
      color: YoColors.lightGray50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: YoColors.lightPrimary,
        foregroundColor: YoColors.lightText,
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: YoColors.lightPrimary,
        side: const BorderSide(color: YoColors.lightPrimary),
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    bottomNavigationBarTheme: YoBottomNavTheme.light,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: YoColors.lightGray50,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: YoColors.lightPrimary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: YoColors.lightError),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: YoColors.lightError, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: YoColors.lightGray100,
      selectedColor: YoColors.lightPrimary,
      labelStyle: const TextStyle(color: YoColors.lightText),
      secondaryLabelStyle: const TextStyle(color: YoColors.lightText),
      brightness: Brightness.light,
    ),
    dividerTheme: const DividerThemeData(
      color: YoColors.lightGray200,
      thickness: 1,
      space: 1,
    ),
  );

  static ThemeData darkTheme(BuildContext ctx) => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: YoColors.darkPrimary,
      onPrimary: YoColors.darkText,
      secondary: YoColors.darkSecondary,
      onSecondary: YoColors.darkText,
      surface: YoColors.darkGray50,
      onSurface: YoColors.darkText,
      error: YoColors.darkError,
      onError: YoColors.white,
      surfaceContainerHighest: YoColors.darkGray100,
    ),
    dropdownMenuTheme: YoDropdownTheme.light(ctx),
    scaffoldBackgroundColor: YoColors.darkBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: YoColors.darkBackground,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: YoColors.darkText),
      titleTextStyle: TextStyle(
        color: YoColors.darkText,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 2,
      color: YoColors.darkGray50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    bottomNavigationBarTheme: YoBottomNavTheme.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: YoColors.darkPrimary,
        foregroundColor: YoColors.darkText,
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: YoColors.darkPrimary,
        side: const BorderSide(color: YoColors.darkPrimary),
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: YoColors.darkGray50,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: YoColors.darkPrimary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: YoColors.darkError),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: YoColors.darkError, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      labelStyle: const TextStyle(color: YoColors.darkGray400),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: YoColors.darkGray100,
      selectedColor: YoColors.darkPrimary,
      labelStyle: const TextStyle(color: YoColors.darkText),
      secondaryLabelStyle: const TextStyle(color: YoColors.darkText),
      brightness: Brightness.dark,
    ),
    dividerTheme: const DividerThemeData(
      color: YoColors.darkGray200,
      thickness: 1,
      space: 1,
    ),
  );
}
