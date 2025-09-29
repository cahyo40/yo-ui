import 'package:flutter/material.dart';

import '../../yo_ui_base.dart';
import 'yo_color_schema.dart';

class YoColors {
  // Light Theme Colors
  static YoCorePalette get _defaultLight =>
      kYoPalettes[YoColorScheme.defaultScheme]![Brightness.light]!;
  static YoCorePalette get _defaultDark =>
      kYoPalettes[YoColorScheme.defaultScheme]![Brightness.dark]!;

  static Color get lightText => _defaultLight.text;
  static Color get lightBackground => _defaultLight.background;
  static Color get lightPrimary => _defaultLight.primary;
  static Color get lightSecondary => _defaultLight.secondary;
  static Color get lightAccent => _defaultLight.accent;

  static Color get darkText => _defaultDark.text;
  static Color get darkBackground => _defaultDark.background;
  static Color get darkPrimary => _defaultDark.primary;
  static Color get darkSecondary => _defaultDark.secondary;
  static Color get darkAccent => _defaultDark.accent;

  // Semantic Colors - Light Theme
  static const Color lightSuccess = Color(0xFF00A86B);
  static const Color lightWarning = Color(0xFFFFA500);
  static const Color lightError = Color(0xFFDC3545);
  static const Color lightInfo = Color(0xFF17A2B8);

  // Semantic Colors - Dark Theme
  static const Color darkSuccess = Color(0xFF00D68F);
  static const Color darkWarning = Color(0xFFFFB84D);
  static const Color darkError = Color(0xFFFF4757);
  static const Color darkInfo = Color(0xFF4DCAFF);

  // Neutral Colors - Common for both themes
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);

  // Gray Scale - Light Theme
  static const Color lightGray50 = Color(0xFFF9FAFB);
  static const Color lightGray100 = Color(0xFFF3F4F6);
  static const Color lightGray200 = Color(0xFFE5E7EB);
  static const Color lightGray300 = Color(0xFFD1D5DB);
  static const Color lightGray400 = Color(0xFF9CA3AF);
  static const Color lightGray500 = Color(0xFF6B7280);
  static const Color lightGray600 = Color(0xFF4B5563);
  static const Color lightGray700 = Color(0xFF374151);
  static const Color lightGray800 = Color(0xFF1F2937);
  static const Color lightGray900 = Color(0xFF111827);

  // Gray Scale - Dark Theme
  static const Color darkGray50 = Color(0xFF1F2937);
  static const Color darkGray100 = Color(0xFF374151);
  static const Color darkGray200 = Color(0xFF4B5563);
  static const Color darkGray300 = Color(0xFF6B7280);
  static const Color darkGray400 = Color(0xFF9CA3AF);
  static const Color darkGray500 = Color(0xFFD1D5DB);
  static const Color darkGray600 = Color(0xFFE5E7EB);
  static const Color darkGray700 = Color(0xFFF3F4F6);
  static const Color darkGray800 = Color(0xFFF9FAFB);
  static const Color darkGray900 = Color(0xFFFFFFFF);

  // Gradients
  static Gradient lightPrimaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [lightPrimary, lightSecondary],
  );

  static Gradient darkPrimaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [darkPrimary, darkSecondary],
  );

  static Gradient lightAccentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [lightAccent, lightSecondary],
  );

  static Gradient darkAccentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [darkAccent, darkSecondary],
  );

  // === STATIC GETTERS UNTUK THEME DATA ===
  // Light Theme Colors
  static ColorScheme get lightColorScheme => ColorScheme.light(
    primary: lightPrimary,
    onPrimary: lightText,
    secondary: lightSecondary,
    onSecondary: lightText,
    surface: lightGray50,
    onSurface: lightText,
    error: lightError,
    onError: white,
    surfaceContainerHighest: lightGray100,
  );

  // Dark Theme Colors
  static ColorScheme get darkColorScheme => ColorScheme.dark(
    primary: darkPrimary,
    onPrimary: darkText,
    secondary: darkSecondary,
    onSecondary: darkText,
    surface: darkGray50,
    onSurface: darkText,
    error: darkError,
    onError: white,
    surfaceContainerHighest: darkGray100,
  );

  // === DYNAMIC GETTERS UNTUK WIDGETS (Context-aware) ===
  static Color text(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightText
        : darkText;
  }

  static Color background(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightBackground
        : darkBackground;
  }

  static Color primary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightPrimary
        : darkPrimary;
  }

  static Color secondary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightSecondary
        : darkSecondary;
  }

  static Color accent(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightAccent
        : darkAccent;
  }

  static Color success(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightSuccess
        : darkSuccess;
  }

  static Color warning(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightWarning
        : darkWarning;
  }

  static Color error(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightError
        : darkError;
  }

  static Color info(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightInfo
        : darkInfo;
  }

  // Gray scale getters
  static Color gray50(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightGray50
        : darkGray50;
  }

  static Color gray100(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightGray100
        : darkGray100;
  }

  static Color gray200(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightGray200
        : darkGray200;
  }

  static Color gray300(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightGray300
        : darkGray300;
  }

  static Color gray400(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightGray400
        : darkGray400;
  }

  static Color gray500(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightGray500
        : darkGray500;
  }

  static Color gray600(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightGray600
        : darkGray600;
  }

  static Color gray700(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightGray700
        : darkGray700;
  }

  static Color gray800(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightGray800
        : darkGray800;
  }

  static Color gray900(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightGray900
        : darkGray900;
  }

  // Gradient getters
  static Gradient primaryGradient(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightPrimaryGradient
        : darkPrimaryGradient;
  }

  static Gradient accentGradient(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? lightAccentGradient
        : darkAccentGradient;
  }
}
