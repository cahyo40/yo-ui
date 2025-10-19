import 'package:flutter/material.dart';

class YoCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final Color? backgroundColor; // nullable → pakai tema bila null
  final double elevation;
  final BorderRadius borderRadius;
  final VoidCallback? onTap;
  final List<BoxShadow>? shadows; // plural → lebih fleksibel

  const YoCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.backgroundColor, // ← null = ambil dari tema
    this.elevation = 0,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.onTap,
    this.shadows,
  });

  /// Kartu "filled" – warna otomatis ikut surface tema (light/dark)
  const YoCard.filled({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.elevation = 0,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.onTap,
  }) : backgroundColor = null,
       shadows = null;

  /// Kartu "elevated" – punya bayangan + surface tema
  const YoCard.elevated({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.elevation = 2,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.onTap,
  }) : backgroundColor = null,
       shadows = null;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final surface =
        backgroundColor ?? theme.colorScheme.surface; // ← otomatis light/dark

    final defaultShadows =
        shadows ??
        (elevation > 0
            ? [
                BoxShadow(
                  color: theme.brightness == Brightness.dark
                      ? Colors.black.withValues(alpha: .3)
                      : Colors.black.withValues(alpha: .1),
                  blurRadius: elevation * 2,
                  offset: Offset(0, elevation),
                ),
              ]
            : null);

    return Container(
      decoration: BoxDecoration(
        color: surface,
        borderRadius: borderRadius,
        boxShadow: defaultShadows,
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: Padding(padding: padding, child: child),
        ),
      ),
    );
  }
}
