import 'package:flutter/material.dart';

import '../../yo_ui_base.dart';

class YoCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final Color backgroundColor;
  final double elevation;
  final BorderRadius borderRadius;
  final VoidCallback? onTap;
  final BoxShadow? shadow;

  const YoCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.backgroundColor = YoColors.white,
    this.elevation = 2,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.onTap,
    this.shadow,
  });

  const YoCard.elevated({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.elevation = 4,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.onTap,
  }) : backgroundColor = YoColors.white,
       shadow = const BoxShadow(
         color: Color(0x0A000000),
         blurRadius: 10,
         offset: Offset(0, 4),
       );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        boxShadow: [
          if (shadow != null) shadow!,
          if (elevation > 0) ...[
            BoxShadow(
              color: Colors.black.withValues(alpha: .1),
              blurRadius: elevation * 2,
              offset: Offset(0, elevation),
            ),
          ],
        ],
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
