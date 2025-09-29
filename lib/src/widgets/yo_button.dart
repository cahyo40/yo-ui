import 'package:flutter/material.dart';

import '../../yo_ui.dart';

class YoButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final YoButtonVariant variant;
  final YoButtonSize size;
  final Widget? icon;
  final bool isLoading;
  final bool expanded;

  const YoButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.variant = YoButtonVariant.primary,
    this.size = YoButtonSize.medium,
    this.icon,
    this.isLoading = false,
    this.expanded = false,
  });

  const YoButton.primary({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.isLoading = false,
    this.expanded = false,
  }) : variant = YoButtonVariant.primary;

  const YoButton.secondary({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.isLoading = false,
    this.expanded = false,
  }) : variant = YoButtonVariant.secondary;

  const YoButton.outline({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.isLoading = false,
    this.expanded = false,
  }) : variant = YoButtonVariant.outline;

  const YoButton.ghost({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.isLoading = false,
    this.expanded = false,
  }) : variant = YoButtonVariant.ghost;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = _getButtonStyle(context);
    final padding = _getPadding();
    final textStyle = _getTextStyle(context);

    Widget child = isLoading
        ? SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: _getLoaderColor(context),
            ),
          )
        : Row(
            mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[icon!, SizedBox(width: _getIconSpacing())],
              Flexible(
                child: YoText(text, style: textStyle, align: TextAlign.center),
              ),
            ],
          );

    if (expanded) {
      child = Expanded(child: child);
    }

    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: buttonStyle,
      child: Container(padding: padding, child: child),
    );
  }

  ButtonStyle _getButtonStyle(BuildContext context) {
    switch (variant) {
      case YoButtonVariant.primary:
        return ElevatedButton.styleFrom(
          backgroundColor: YoColors.primary(context), // Context-aware
          foregroundColor: YoColors.text(context), // Context-aware
          disabledBackgroundColor: YoColors.gray300(context), // Context-aware
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      case YoButtonVariant.secondary:
        return ElevatedButton.styleFrom(
          backgroundColor: YoColors.secondary(context), // Context-aware
          foregroundColor: YoColors.text(context), // Context-aware
          disabledBackgroundColor: YoColors.gray300(context), // Context-aware
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      case YoButtonVariant.outline:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: YoColors.primary(context), // Context-aware
          disabledBackgroundColor: Colors.transparent,
          elevation: 0,
          side: BorderSide(
            color: onPressed != null
                ? YoColors.primary(context) // Context-aware
                : YoColors.gray300(context), // Context-aware
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      case YoButtonVariant.ghost:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: YoColors.primary(context), // Context-aware
          disabledBackgroundColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
    }
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case YoButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
      case YoButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 12);
      case YoButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 16);
    }
  }

  TextStyle _getTextStyle(BuildContext ctx) {
    switch (size) {
      case YoButtonSize.small:
        return YoTextTheme.labelSmall(ctx);
      case YoButtonSize.medium:
        return YoTextTheme.labelMedium(ctx);
      case YoButtonSize.large:
        return YoTextTheme.labelLarge(ctx);
    }
  }

  double _getIconSpacing() {
    switch (size) {
      case YoButtonSize.small:
        return 4;
      case YoButtonSize.medium:
        return 8;
      case YoButtonSize.large:
        return 12;
    }
  }

  Color _getLoaderColor(BuildContext context) {
    switch (variant) {
      case YoButtonVariant.primary:
      case YoButtonVariant.secondary:
        return YoColors.white; // Static color
      case YoButtonVariant.outline:
      case YoButtonVariant.ghost:
        return YoColors.primary(context); // Context-aware
    }
  }
}

enum YoButtonVariant { primary, secondary, outline, ghost }

enum YoButtonSize { small, medium, large }
