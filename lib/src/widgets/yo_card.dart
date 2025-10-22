import 'package:flutter/material.dart';

class YoCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final Color? backgroundColor;
  final double elevation;
  final BorderRadius borderRadius;
  final VoidCallback? onTap;
  final List<BoxShadow>? shadows;
  final bool interactive;
  final Border? border;

  const YoCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.backgroundColor,
    this.elevation = 0,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.onTap,
    this.shadows,
    this.interactive = true,
    this.border,
  });

  /// Kartu "filled" – warna otomatis ikut surface tema (light/dark)
  const YoCard.filled({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.elevation = 0,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.onTap,
    this.interactive = true,
  }) : backgroundColor = null,
       shadows = null,
       border = null;

  /// Kartu "elevated" – punya bayangan + surface tema
  const YoCard.elevated({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.elevation = 2,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.onTap,
    this.interactive = true,
  }) : backgroundColor = null,
       shadows = null,
       border = null;

  /// Kartu "outlined" – dengan border
  const YoCard.outlined({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.onTap,
    this.interactive = true,
  }) : backgroundColor = null,
       elevation = 0,
       shadows = null,
       border = null;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Determine background color
    final surfaceColor = backgroundColor ?? colorScheme.surface;

    // Generate shadows based on elevation
    final defaultShadows = shadows ?? _generateShadows(theme, elevation);

    // Determine border based on variant or use provided border
    final Border? effectiveBorder = border ?? _getBorder(theme);

    Widget content = Container(
      decoration: BoxDecoration(
        color: surfaceColor,
        borderRadius: borderRadius,
        border: effectiveBorder,
        boxShadow: defaultShadows,
      ),
      child: Padding(padding: padding, child: child),
    );

    // Make it interactive if onTap is provided
    if (onTap != null && interactive) {
      content = Material(
        type: MaterialType.transparency,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: content,
        ),
      );
    } else if (interactive) {
      content = Material(
        type: MaterialType.transparency,
        borderRadius: borderRadius,
        child: content,
      );
    }

    return content;
  }

  List<BoxShadow>? _generateShadows(ThemeData theme, double elevation) {
    if (elevation <= 0) return null;

    return [
      BoxShadow(
        color: theme.brightness == Brightness.dark
            ? Colors.black.withValues(alpha: .3)
            : Colors.black.withValues(alpha: .1),
        blurRadius: elevation * 4,
        spreadRadius: elevation * 0.5,
        offset: Offset(0, elevation),
      ),
      BoxShadow(
        color: theme.brightness == Brightness.dark
            ? Colors.black.withValues(alpha: .2)
            : Colors.black.withValues(alpha: .05),
        blurRadius: elevation * 8,
        spreadRadius: elevation * 0.25,
        offset: Offset(0, elevation * 2),
      ),
    ];
  }

  Border? _getBorder(ThemeData theme) {
    // For outlined variant, use outline color
    if (backgroundColor == null &&
        elevation == 0 &&
        shadows == null &&
        border == null) {
      return Border.all(
        color: theme.colorScheme.outline.withValues(alpha: .2),
        width: 1,
      );
    }
    return null;
  }
}
