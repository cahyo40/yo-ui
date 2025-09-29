import 'package:flutter/material.dart';

import '../colors/yo_colors.dart';

class YoBottomNavTheme {
  static BottomNavigationBarThemeData get light => BottomNavigationBarThemeData(
    backgroundColor: YoColors.lightBackground,
    selectedItemColor: YoColors.lightPrimary,
    unselectedItemColor: YoColors.lightGray500,
    elevation: 8,
  );

  static BottomNavigationBarThemeData get dark => BottomNavigationBarThemeData(
    backgroundColor: YoColors.darkBackground,
    selectedItemColor: YoColors.darkPrimary,
    unselectedItemColor: YoColors.darkGray500,
    elevation: 8,
  );
}
