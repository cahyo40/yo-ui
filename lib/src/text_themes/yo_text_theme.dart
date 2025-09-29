import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../yo_ui.dart';

class YoTextTheme {
  // Font Families
  static const String fontFamilyPrimary = 'Poppins';
  static const String fontFamilySecondary = 'Inter';
  static const String fontFamilyMono = 'Space Mono';

  // Display - Theme aware
  static TextStyle displayLarge(BuildContext context) => GoogleFonts.getFont(
    fontFamilyPrimary,
    fontSize: 57,
    fontWeight: FontWeight.w400,
    color: YoColors.text(context),
    letterSpacing: -0.25,
  );

  static TextStyle displayMedium(BuildContext context) => GoogleFonts.getFont(
    fontFamilyPrimary,
    fontSize: 45,
    fontWeight: FontWeight.w400,
    color: YoColors.text(context),
  );

  static TextStyle displaySmall(BuildContext context) => GoogleFonts.getFont(
    fontFamilyPrimary,
    fontSize: 36,
    fontWeight: FontWeight.w400,
    color: YoColors.text(context),
  );

  // Headline - Theme aware
  static TextStyle headlineLarge(BuildContext context) => GoogleFonts.getFont(
    fontFamilyPrimary,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: YoColors.text(context),
  );

  static TextStyle headlineMedium(BuildContext context) => GoogleFonts.getFont(
    fontFamilyPrimary,
    fontSize: 28,
    fontWeight: FontWeight.w400,
    color: YoColors.text(context),
  );

  static TextStyle headlineSmall(BuildContext context) => GoogleFonts.getFont(
    fontFamilyPrimary,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: YoColors.text(context),
  );

  // Title - Theme aware
  static TextStyle titleLarge(BuildContext context) => GoogleFonts.getFont(
    fontFamilyPrimary,
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: YoColors.text(context),
  );

  static TextStyle titleMedium(BuildContext context) => GoogleFonts.getFont(
    fontFamilyPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: YoColors.text(context),
    letterSpacing: 0.15,
  );

  static TextStyle titleSmall(BuildContext context) => GoogleFonts.getFont(
    fontFamilyPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: YoColors.text(context),
    letterSpacing: 0.1,
  );

  // Body - Theme aware
  static TextStyle bodyLarge(BuildContext context) => GoogleFonts.getFont(
    fontFamilySecondary,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: YoColors.text(context),
    letterSpacing: 0.5,
  );

  static TextStyle bodyMedium(BuildContext context) => GoogleFonts.getFont(
    fontFamilySecondary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: YoColors.text(context),
    letterSpacing: 0.25,
  );

  static TextStyle bodySmall(BuildContext context) => GoogleFonts.getFont(
    fontFamilySecondary,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: YoColors.gray400(context),
    letterSpacing: 0.4,
  );

  // Label - Theme aware
  static TextStyle labelLarge(BuildContext context) => GoogleFonts.getFont(
    fontFamilySecondary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: YoColors.text(context),
    letterSpacing: 0.1,
  );

  static TextStyle labelMedium(BuildContext context) => GoogleFonts.getFont(
    fontFamilySecondary,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: YoColors.text(context),
    letterSpacing: 0.5,
  );

  static TextStyle labelSmall(BuildContext context) => GoogleFonts.getFont(
    fontFamilySecondary,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: YoColors.text(context),
    letterSpacing: 0.5,
  );

  // Mono (Untuk angka/currency) - Theme aware
  static TextStyle monoLarge(BuildContext context) => GoogleFonts.getFont(
    fontFamilyMono,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: YoColors.text(context),
  );

  static TextStyle monoMedium(BuildContext context) => GoogleFonts.getFont(
    fontFamilyMono,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: YoColors.text(context),
  );

  static TextStyle monoSmall(BuildContext context) => GoogleFonts.getFont(
    fontFamilyMono,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: YoColors.gray400(context),
  );

  // Get complete text theme
  static TextTheme textTheme(BuildContext context) => TextTheme(
    displayLarge: displayLarge(context),
    displayMedium: displayMedium(context),
    displaySmall: displaySmall(context),
    headlineLarge: headlineLarge(context),
    headlineMedium: headlineMedium(context),
    headlineSmall: headlineSmall(context),
    titleLarge: titleLarge(context),
    titleMedium: titleMedium(context),
    titleSmall: titleSmall(context),
    bodyLarge: bodyLarge(context),
    bodyMedium: bodyMedium(context),
    bodySmall: bodySmall(context),
    labelLarge: labelLarge(context),
    labelMedium: labelMedium(context),
    labelSmall: labelSmall(context),
  );
}
