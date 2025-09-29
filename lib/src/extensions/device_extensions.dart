import 'package:flutter/material.dart';

import '../../yo_ui.dart';

extension YoDeviceExtensions on BuildContext {
  // Screen size checks
  bool get yoIsPhone => YoDeviceHelper.isPhone(this);
  bool get yoIsTablet => YoDeviceHelper.isTablet(this);
  bool get yoIsLandscape => YoDeviceHelper.isLandscape(this);
  bool get yoIsPortrait => YoDeviceHelper.isPortrait(this);
  
  // Screen size categories
  ScreenSize get yoScreenSize => YoDeviceHelper.getScreenSize(this);
  ScreenHeight get yoScreenHeight => YoDeviceHelper.getScreenHeight(this);
  
  // Screen dimensions
  double get yoWidth => MediaQuery.of(this).size.width;
  double get yoHeight => MediaQuery.of(this).size.height;
  
  // Device metrics
  double get yoPixelRatio => YoDeviceHelper.getPixelRatio(this);
  double get yoTextScaleFactor => YoDeviceHelper.getTextScaleFactor(this);
  Brightness get yoPlatformBrightness => YoDeviceHelper.getPlatformBrightness(this);
  
  // Safe area and insets
  EdgeInsets get yoSafeArea => YoDeviceHelper.getSafeAreaPadding(this);
  EdgeInsets get yoViewPadding => YoDeviceHelper.getViewPadding(this);
  EdgeInsets get yoViewInsets => YoDeviceHelper.getViewInsets(this);
  
  // Notch and navigation bar
  bool get yoHasNotch => YoDeviceHelper.hasNotch(this);
  double get yoNotchHeight => YoDeviceHelper.getNotchHeight(this);
  double get yoBottomNavBarHeight => YoDeviceHelper.getBottomNavigationBarHeight(this);
  double get yoStatusBarHeight => YoDeviceHelper.getStatusBarHeight(this);
  
  // Keyboard
  bool get yoKeyboardVisible => YoDeviceHelper.isKeyboardVisible(this);
  double get yoKeyboardHeight => YoDeviceHelper.getKeyboardHeight(this);
  
  // Responsive helpers
  bool get yoIsSmallScreen => yoScreenSize == ScreenSize.small;
  bool get yoIsMediumScreen => yoScreenSize == ScreenSize.medium;
  bool get yoIsLargeScreen => yoScreenSize == ScreenSize.large;
  
  // Responsive sizing
  double responsiveValue({
    required double phone,
    double? tablet,
    double? desktop,
  }) {
    if (yoIsTablet && tablet != null) return tablet;
    if (yoIsLargeScreen && desktop != null) return desktop;
    return phone;
  }
  
  // Conditional rendering based on screen size
  T responsiveWidget<T>({
    required T phone,
    T? tablet,
    T? desktop,
  }) {
    if (yoIsTablet && tablet != null) return tablet;
    if (yoIsLargeScreen && desktop != null) return desktop;
    return phone;
  }
}