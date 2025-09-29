import 'package:flutter/material.dart';

import '../../yo_ui.dart';

extension YoColorContext on BuildContext {
  /// Ambil palette yang sedang aktif (light/dark) + skema default
  YoCorePalette get _active {
    final bright = Theme.of(this).brightness;
    return kYoPalettes[YoColorScheme.defaultScheme]![bright]!;
  }

  /// Bisa pakai skema custom kalau mau
  YoCorePalette _palette([YoColorScheme? scheme]) {
    final bright = Theme.of(this).brightness;
    final s = scheme ?? YoColorScheme.defaultScheme;
    return kYoPalettes[s]![bright]!;
  }

  // Getter singkat (default scheme)
  Color get primaryColor => _active.primary;
  Color get secondaryColor => _active.secondary;
  Color get accentColor => _active.accent;
  Color get backgroundColor => _active.background;
  Color get textColor => _active.text;

  // Getter dengan skema custom (opsional)
  Color primaryColorOf(YoColorScheme scheme) => _palette(scheme).primary;
  Color secondaryColorOf(YoColorScheme scheme) => _palette(scheme).secondary;
  Color accentColorOf(YoColorScheme scheme) => _palette(scheme).accent;
  Color backgroundColorOf(YoColorScheme scheme) => _palette(scheme).background;
  Color textColorOf(YoColorScheme scheme) => _palette(scheme).text;

  // Main colors - shorter syntax

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
}
