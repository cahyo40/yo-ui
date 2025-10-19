import 'package:flutter/material.dart';

/// Ready-to-use trendy shadow sets (2025) – semua return List<BoxShadow>
/// Warna bisa di-custom via parameter [color] / [primary] / [dark] / [tint]
class YoBoxShadow {
  const YoBoxShadow._();

  /* ---------- 1. Soft & Natural ------------------------------------ */
  static List<BoxShadow> soft({Color? color, double blur = 16, double y = 4}) =>
      [
        BoxShadow(
          color: (color ?? Colors.black).withValues(alpha: .06),
          blurRadius: blur,
          offset: Offset(0, y),
        ),
      ];

  /* ---------- 2. Primary-Tinted ------------------------------------ */
  static List<BoxShadow> tinted({
    required Color primary,
    double blur = 20,
    double y = 6,
  }) => [
    BoxShadow(
      color: primary.withValues(alpha: .15),
      blurRadius: blur,
      offset: Offset(0, y),
    ),
  ];

  /* ---------- 3. Layered (Stacked) --------------------------------- */
  static List<BoxShadow> layered({
    Color? color,
    double blur1 = 4,
    double blur2 = 12,
    double y1 = 2,
    double y2 = 6,
  }) => [
    BoxShadow(
      color: (color ?? Colors.black).withValues(alpha: .04),
      blurRadius: blur1,
      offset: Offset(0, y1),
    ),
    BoxShadow(
      color: (color ?? Colors.black).withValues(alpha: .06),
      blurRadius: blur2,
      offset: Offset(0, y2),
    ),
  ];

  /* ---------- 4. Dark-Mode Optimised ------------------------------- */
  static List<BoxShadow> darkMode({
    Color? dark,
    double blur = 24,
    double y = 8,
  }) => [
    BoxShadow(
      color: (dark ?? Colors.black).withValues(alpha: .35),
      blurRadius: blur,
      offset: Offset(0, y),
    ),
  ];

  /* ---------- 5. Neumorphism (Raised) ------------------------------ */
  static List<BoxShadow> neuRaised({
    Color? light,
    Color? dark,
    double blur = 12,
    double distance = 6,
  }) => [
    BoxShadow(
      color: (light ?? Colors.white).withValues(alpha: .8),
      blurRadius: blur,
      offset: Offset(-distance, -distance),
    ),
    BoxShadow(
      color: (dark ?? Colors.black).withValues(alpha: .15),
      blurRadius: blur,
      offset: Offset(distance, distance),
    ),
  ];

  /* ---------- 6. Glassmorphism Glow -------------------------------- */
  static List<BoxShadow> glow({
    required Color tint,
    double blur = 40,
    double spread = -8,
  }) => [
    BoxShadow(
      color: tint.withValues(alpha: .25),
      blurRadius: blur,
      spreadRadius: spread,
      offset: Offset.zero,
    ),
  ];

  /* ---------- 7. Long-Throw Drop ----------------------------------- */
  static List<BoxShadow> long({
    Color? color,
    double blur = 32,
    double y = 16,
  }) => [
    BoxShadow(
      color: (color ?? Colors.black).withValues(alpha: .12),
      blurRadius: blur,
      offset: Offset(0, y),
    ),
  ];

  /* ---------- 8. Coloured Gradient (2-Tone) ------------------------ */
  static List<BoxShadow> gradient({
    required Color color1,
    required Color color2,
    double blur = 24,
    double y1 = 8,
    double y2 = 12,
  }) => [
    BoxShadow(
      color: color1.withValues(alpha: .30),
      blurRadius: blur,
      offset: Offset(0, y1),
    ),
    BoxShadow(
      color: color2.withValues(alpha: .25),
      blurRadius: blur,
      offset: Offset(0, y2),
    ),
  ];

  /* ---------- 9. Sharp & Subtle ------------------------------------ */
  static List<BoxShadow> sharp({Color? color, double blur = 2, double y = 1}) =>
      [
        BoxShadow(
          color: (color ?? Colors.black).withValues(alpha: .08),
          blurRadius: blur,
          offset: Offset(0, y),
        ),
      ];

  /* ---------- 10. Apple-Style Background Blur ---------------------- */
  static List<BoxShadow> apple({
    Color? color,
    double blur1 = 10,
    double blur2 = 24,
    double y1 = 4,
    double y2 = 12,
    double spread2 = -12,
  }) => [
    BoxShadow(
      color: (color ?? Colors.black).withValues(alpha: .12),
      blurRadius: blur1,
      offset: Offset(0, y1),
    ),
    BoxShadow(
      color: (color ?? Colors.black).withValues(alpha: .06),
      blurRadius: blur2,
      spreadRadius: spread2,
      offset: Offset(0, y2),
    ),
  ];
}
