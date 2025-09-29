import 'package:flutter/material.dart';

class YoPadding {
  YoPadding._(); // Private constructor untuk mencegah instansiasi

  // === ALL ===
  static const EdgeInsets all4 = EdgeInsets.all(4);
  static const EdgeInsets all8 = EdgeInsets.all(8);
  static const EdgeInsets all12 = EdgeInsets.all(12);
  static const EdgeInsets all16 = EdgeInsets.all(16);
  static const EdgeInsets all20 = EdgeInsets.all(20);
  static const EdgeInsets all24 = EdgeInsets.all(24);
  static const EdgeInsets all32 = EdgeInsets.all(32);

  // === SYMMETRIC ===
  static const EdgeInsets symmetricH4 = EdgeInsets.symmetric(horizontal: 4);
  static const EdgeInsets symmetricH8 = EdgeInsets.symmetric(horizontal: 8);
  static const EdgeInsets symmetricH12 = EdgeInsets.symmetric(horizontal: 12);
  static const EdgeInsets symmetricH16 = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets symmetricH20 = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets symmetricH24 = EdgeInsets.symmetric(horizontal: 24);
  static const EdgeInsets symmetricH32 = EdgeInsets.symmetric(horizontal: 32);

  static const EdgeInsets symmetricV4 = EdgeInsets.symmetric(vertical: 4);
  static const EdgeInsets symmetricV8 = EdgeInsets.symmetric(vertical: 8);
  static const EdgeInsets symmetricV12 = EdgeInsets.symmetric(vertical: 12);
  static const EdgeInsets symmetricV16 = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets symmetricV20 = EdgeInsets.symmetric(vertical: 20);
  static const EdgeInsets symmetricV24 = EdgeInsets.symmetric(vertical: 24);
  static const EdgeInsets symmetricV32 = EdgeInsets.symmetric(vertical: 32);

  // === ONLY ===
  static const EdgeInsets onlyTop4 = EdgeInsets.only(top: 4);
  static const EdgeInsets onlyTop8 = EdgeInsets.only(top: 8);
  static const EdgeInsets onlyTop12 = EdgeInsets.only(top: 12);
  static const EdgeInsets onlyTop16 = EdgeInsets.only(top: 16);
  static const EdgeInsets onlyTop24 = EdgeInsets.only(top: 24);

  static const EdgeInsets onlyBottom4 = EdgeInsets.only(bottom: 4);
  static const EdgeInsets onlyBottom8 = EdgeInsets.only(bottom: 8);
  static const EdgeInsets onlyBottom12 = EdgeInsets.only(bottom: 12);
  static const EdgeInsets onlyBottom16 = EdgeInsets.only(bottom: 16);
  static const EdgeInsets onlyBottom24 = EdgeInsets.only(bottom: 24);

  static const EdgeInsets onlyLeft4 = EdgeInsets.only(left: 4);
  static const EdgeInsets onlyLeft8 = EdgeInsets.only(left: 8);
  static const EdgeInsets onlyLeft12 = EdgeInsets.only(left: 12);
  static const EdgeInsets onlyLeft16 = EdgeInsets.only(left: 16);
  static const EdgeInsets onlyLeft24 = EdgeInsets.only(left: 24);

  static const EdgeInsets onlyRight4 = EdgeInsets.only(right: 4);
  static const EdgeInsets onlyRight8 = EdgeInsets.only(right: 8);
  static const EdgeInsets onlyRight12 = EdgeInsets.only(right: 12);
  static const EdgeInsets onlyRight16 = EdgeInsets.only(right: 16);
  static const EdgeInsets onlyRight24 = EdgeInsets.only(right: 24);

  // === CUSTOM ===
  static EdgeInsets fromLTRB(
    double left,
    double top,
    double right,
    double bottom,
  ) {
    return EdgeInsets.fromLTRB(left, top, right, bottom);
  }

  static EdgeInsets only({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return EdgeInsets.only(left: left, top: top, right: right, bottom: bottom);
  }
}
