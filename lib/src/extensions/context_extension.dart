import 'package:flutter/material.dart';

import '../colors/yo_colors.dart';
import '../text_themes/yo_text_theme.dart';

extension YoContextExtensions on BuildContext {
  // === COLOR EXTENSIONS ===

  // Main colors - shorter syntax
  Color get primaryColor => YoColors.primary(this);
  Color get secondaryColor => YoColors.secondary(this);
  Color get accentColor => YoColors.accent(this);
  Color get backgroundColor => YoColors.background(this);
  Color get textColor => YoColors.text(this);

  // Semantic colors - shorter syntax
  Color get successColor => YoColors.success(this);
  Color get warningColor => YoColors.warning(this);
  Color get errorColor => YoColors.error(this);
  Color get infoColor => YoColors.info(this);

  // Gray scale - shorter syntax
  Color get gray50 => YoColors.gray50(this);
  Color get gray100 => YoColors.gray100(this);
  Color get gray200 => YoColors.gray200(this);
  Color get gray300 => YoColors.gray300(this);
  Color get gray400 => YoColors.gray400(this);
  Color get gray500 => YoColors.gray500(this);
  Color get gray600 => YoColors.gray600(this);
  Color get gray700 => YoColors.gray700(this);
  Color get gray800 => YoColors.gray800(this);
  Color get gray900 => YoColors.gray900(this);

  // Gradients - shorter syntax
  Gradient get primaryGradient => YoColors.primaryGradient(this);
  Gradient get accentGradient => YoColors.accentGradient(this);

  // === COMPLETE COLOR EXTENSIONS (All options) ===

  // Theme-aware color getters (full names)
  Color get yoText => YoColors.text(this);
  Color get yoBackground => YoColors.background(this);
  Color get yoPrimary => YoColors.primary(this);
  Color get yoSecondary => YoColors.secondary(this);
  Color get yoAccent => YoColors.accent(this);
  Color get yoSuccess => YoColors.success(this);
  Color get yoWarning => YoColors.warning(this);
  Color get yoError => YoColors.error(this);
  Color get yoInfo => YoColors.info(this);

  // Gray scale getters (full names)
  Color get yoGray50 => YoColors.gray50(this);
  Color get yoGray100 => YoColors.gray100(this);
  Color get yoGray200 => YoColors.gray200(this);
  Color get yoGray300 => YoColors.gray300(this);
  Color get yoGray400 => YoColors.gray400(this);
  Color get yoGray500 => YoColors.gray500(this);
  Color get yoGray600 => YoColors.gray600(this);
  Color get yoGray700 => YoColors.gray700(this);
  Color get yoGray800 => YoColors.gray800(this);
  Color get yoGray900 => YoColors.gray900(this);

  // Gradient getters (full names)
  Gradient get yoPrimaryGradient => YoColors.primaryGradient(this);
  Gradient get yoAccentGradient => YoColors.accentGradient(this);

  // === TEXT STYLE EXTENSIONS ===

  // Text Styles - Theme aware
  TextStyle get yoDisplayLarge => YoTextTheme.displayLarge(this);
  TextStyle get yoDisplayMedium => YoTextTheme.displayMedium(this);
  TextStyle get yoDisplaySmall => YoTextTheme.displaySmall(this);
  TextStyle get yoHeadlineLarge => YoTextTheme.headlineLarge(this);
  TextStyle get yoHeadlineMedium => YoTextTheme.headlineMedium(this);
  TextStyle get yoHeadlineSmall => YoTextTheme.headlineSmall(this);
  TextStyle get yoTitleLarge => YoTextTheme.titleLarge(this);
  TextStyle get yoTitleMedium => YoTextTheme.titleMedium(this);
  TextStyle get yoTitleSmall => YoTextTheme.titleSmall(this);
  TextStyle get yoBodyLarge => YoTextTheme.bodyLarge(this);
  TextStyle get yoBodyMedium => YoTextTheme.bodyMedium(this);
  TextStyle get yoBodySmall => YoTextTheme.bodySmall(this);
  TextStyle get yoLabelLarge => YoTextTheme.labelLarge(this);
  TextStyle get yoLabelMedium => YoTextTheme.labelMedium(this);
  TextStyle get yoLabelSmall => YoTextTheme.labelSmall(this);
  TextStyle get yoCurrencyLarge => YoTextTheme.monoLarge(this);
  TextStyle get yoCurrencyMedium => YoTextTheme.monoMedium(this);
  TextStyle get yoCurrencySmall => YoTextTheme.monoSmall(this);

  // === SPACING & SCREEN HELPERS ===

  // Spacing
  double get yoSpacingXs => 4;
  double get yoSpacingSm => 8;
  double get yoSpacingMd => 16;
  double get yoSpacingLg => 24;
  double get yoSpacingXl => 32;

  // Screen
  double get yoScreenWidth => MediaQuery.of(this).size.width;
  double get yoScreenHeight => MediaQuery.of(this).size.height;
  bool get yoIsMobile => yoScreenWidth < 600;
  bool get yoIsTablet => yoScreenWidth >= 600 && yoScreenWidth < 1200;
  bool get yoIsDesktop => yoScreenWidth >= 1200;
}
