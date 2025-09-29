import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class YoDeviceHelper {
  // Get Device Information
  static Future<Map<String, dynamic>> getDeviceInfo() async {
    final deviceData = <String, dynamic>{};
    final deviceInfo = DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
        final androidInfo = await deviceInfo.androidInfo;
        deviceData['platform'] = 'Android';
        deviceData['version'] = androidInfo.version.release;
        deviceData['model'] = androidInfo.model;
        deviceData['brand'] = androidInfo.brand;
        deviceData['device'] = androidInfo.device;
        deviceData['id'] = androidInfo.id;
        deviceData['manufacturer'] = androidInfo.manufacturer;
        deviceData['sdkVersion'] = androidInfo.version.sdkInt;
        deviceData['isPhysicalDevice'] = androidInfo.isPhysicalDevice;
      } else if (Platform.isIOS) {
        final iosInfo = await deviceInfo.iosInfo;
        deviceData['platform'] = 'iOS';
        deviceData['version'] = iosInfo.systemVersion;
        deviceData['model'] = iosInfo.model;
        deviceData['name'] = iosInfo.name;
        deviceData['utsname'] = iosInfo.utsname.machine;
        deviceData['isPhysicalDevice'] = iosInfo.isPhysicalDevice;
      } else if (Platform.isWindows) {
        final windowsInfo = await deviceInfo.windowsInfo;
        deviceData['platform'] = 'Windows';
        deviceData['version'] = windowsInfo.displayVersion;
        deviceData['model'] = windowsInfo.productName;
        deviceData['deviceId'] = windowsInfo.deviceId;
      } else if (Platform.isMacOS) {
        final macInfo = await deviceInfo.macOsInfo;
        deviceData['platform'] = 'macOS';
        deviceData['model'] = macInfo.model;
        deviceData['version'] = macInfo.osRelease;
        deviceData['kernel'] = macInfo.kernelVersion;
      } else if (Platform.isLinux) {
        final linuxInfo = await deviceInfo.linuxInfo;
        deviceData['platform'] = 'Linux';
        deviceData['version'] = linuxInfo.version;
        deviceData['name'] = linuxInfo.name;
        deviceData['id'] = linuxInfo.id;
      }
    } catch (e) {
      deviceData['platform'] = 'Unknown';
      deviceData['error'] = e.toString();
    }

    return deviceData;
  }

  // Check if device is tablet
  static bool isTablet(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide > 600;
  }

  // Check if device is phone
  static bool isPhone(BuildContext context) {
    final shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide < 600;
  }

  // Check if device is landscape
  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  // Check if device is portrait
  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  // Get screen size category
  static ScreenSize getScreenSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < 600) return ScreenSize.small;
    if (width < 1200) return ScreenSize.medium;
    return ScreenSize.large;
  }

  // Get screen height category
  static ScreenHeight getScreenHeight(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    if (height < 600) return ScreenHeight.small;
    if (height < 900) return ScreenHeight.medium;
    return ScreenHeight.large;
  }

  // Get pixel ratio
  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  // Get text scale factor
  static double getTextScaleFactor(BuildContext context) {
    return MediaQuery.of(context).textScaleFactor;
  }

  // Get platform brightness
  static Brightness getPlatformBrightness(BuildContext context) {
    return MediaQuery.of(context).platformBrightness;
  }

  // Get safe area padding
  static EdgeInsets getSafeAreaPadding(BuildContext context) {
    return MediaQuery.of(context).padding;
  }

  // Get view padding
  static EdgeInsets getViewPadding(BuildContext context) {
    return MediaQuery.of(context).viewPadding;
  }

  // Get view insets
  static EdgeInsets getViewInsets(BuildContext context) {
    return MediaQuery.of(context).viewInsets;
  }

  // Check if device has notch
  static bool hasNotch(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return padding.top > 0;
  }

  // Get notch height
  static double getNotchHeight(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return padding.top;
  }

  // Get bottom navigation bar height
  static double getBottomNavigationBarHeight(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return padding.bottom;
  }

  // Get status bar height
  static double getStatusBarHeight(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return padding.top;
  }

  // Check if keyboard is visible
  static bool isKeyboardVisible(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom > 0;
  }

  // Get keyboard height
  static double getKeyboardHeight(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }

  // Get platform type
  static PlatformType getPlatformType() {
    if (Platform.isAndroid) return PlatformType.android;
    if (Platform.isIOS) return PlatformType.ios;
    if (Platform.isWindows) return PlatformType.windows;
    if (Platform.isMacOS) return PlatformType.macos;
    if (Platform.isLinux) return PlatformType.linux;
    return PlatformType.unknown;
  }

  // Get platform name
  static String getPlatformName() {
    if (Platform.isAndroid) return 'Android';
    if (Platform.isIOS) return 'iOS';
    if (Platform.isWindows) return 'Windows';
    if (Platform.isMacOS) return 'macOS';
    if (Platform.isLinux) return 'Linux';
    return 'Unknown';
  }

  // Check if app is running on web
  static bool get isWeb => kIsWeb;

  // Check if app is running on mobile
  static bool get isMobile => Platform.isAndroid || Platform.isIOS;

  // Check if app is running on desktop
  static bool get isDesktop =>
      Platform.isWindows || Platform.isMacOS || Platform.isLinux;
}

// Enums untuk type safety
enum ScreenSize { small, medium, large }

enum ScreenHeight { small, medium, large }

enum PlatformType { android, ios, windows, macos, linux, unknown }
