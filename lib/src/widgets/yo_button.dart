import 'package:flutter/material.dart';

enum YoButtonVariant { primary, secondary, outline, ghost, custom }

enum YoButtonSize { small, medium, large }

enum IconPosition { left, right }

class YoButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final YoButtonVariant variant;
  final YoButtonSize size;
  final Widget? icon;
  final IconPosition iconPosition;
  final Color? textColor;
  final Color? backgroundColor;
  final bool isLoading;
  final bool expanded;
  final double? width;
  final double? height;

  const YoButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.variant = YoButtonVariant.primary,
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = IconPosition.left,
    this.textColor,
    this.backgroundColor,
    this.isLoading = false,
    this.expanded = false,
    this.width,
    this.height,
  });

  // Named constructors
  const YoButton.primary({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = IconPosition.left,
    this.textColor,
    this.isLoading = false,
    this.expanded = false,
    this.width,
    this.height,
  }) : variant = YoButtonVariant.primary,
       backgroundColor = null;

  const YoButton.secondary({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = IconPosition.left,
    this.textColor,
    this.isLoading = false,
    this.expanded = false,
    this.width,
    this.height,
  }) : variant = YoButtonVariant.secondary,
       backgroundColor = null;

  const YoButton.outline({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = IconPosition.left,
    this.textColor,
    this.isLoading = false,
    this.expanded = false,
    this.width,
    this.height,
  }) : variant = YoButtonVariant.outline,
       backgroundColor = null;

  const YoButton.ghost({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = IconPosition.left,
    this.textColor,
    this.isLoading = false,
    this.expanded = false,
    this.width,
    this.height,
  }) : variant = YoButtonVariant.ghost,
       backgroundColor = null;

  const YoButton.custom({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = IconPosition.left,
    this.textColor,
    this.isLoading = false,
    this.expanded = false,
    this.width,
    this.height,
  }) : variant = YoButtonVariant.custom;

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
              color: _getProgressIndicatorColor(context),
            ),
          )
        : Row(
            mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildContent(textStyle),
          );

    final buttonChild = Container(
      padding: padding,
      width: width,
      height: height,
      child: child,
    );

    return elevatedButton(context, buttonStyle, buttonChild);
  }

  Widget elevatedButton(
    BuildContext context,
    ButtonStyle buttonStyle,
    Widget child,
  ) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: buttonStyle,
      child: child,
    );
  }

  List<Widget> _buildContent(TextStyle textStyle) {
    final textWidget = Flexible(
      child: Text(
        text,
        style: textStyle,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      ),
    );

    if (icon == null) return [textWidget];

    final gap = SizedBox(width: _getIconSpacing());
    final iconWidget = IconTheme(
      data: IconThemeData(size: _getIconSize(), color: textStyle.color),
      child: icon!,
    );

    return iconPosition == IconPosition.right
        ? [textWidget, gap, iconWidget]
        : [iconWidget, gap, textWidget];
  }

  ButtonStyle _getButtonStyle(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    switch (variant) {
      case YoButtonVariant.primary:
        return ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          disabledBackgroundColor: theme.disabledColor,
          elevation: 0,
          shape: _getShape(),
        ).copyWith(
          foregroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return colorScheme.onSurface.withValues(alpha: 0.38);
            }
            return textColor ?? colorScheme.onPrimary;
          }),
        );

      case YoButtonVariant.secondary:
        return ElevatedButton.styleFrom(
          backgroundColor: colorScheme.secondary,
          foregroundColor: colorScheme.onSecondary,
          disabledBackgroundColor: theme.disabledColor,
          elevation: 0,
          shape: _getShape(),
        );

      case YoButtonVariant.outline:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: _getForegroundColor(context),
          disabledBackgroundColor: Colors.transparent,
          disabledForegroundColor: theme.disabledColor,
          side: BorderSide(
            color: onPressed != null
                ? colorScheme.primary
                : theme.disabledColor,
          ),
          elevation: 0,
          shape: _getShape(),
        );

      case YoButtonVariant.ghost:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: _getForegroundColor(context),
          disabledBackgroundColor: Colors.transparent,
          disabledForegroundColor: theme.disabledColor,
          elevation: 0,
          shape: _getShape(),
        );

      case YoButtonVariant.custom:
        final bgColor = backgroundColor ?? colorScheme.primary;
        return ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: _getCustomTextColor(context, bgColor),
          disabledBackgroundColor: bgColor.withValues(alpha: 0.32),
          elevation: 0,
          shape: _getShape(),
        );
    }
  }

  OutlinedBorder _getShape() =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));

  EdgeInsets _getPadding() {
    switch (size) {
      case YoButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
      case YoButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 12);
      case YoButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 20, vertical: 16);
    }
  }

  Color _getForegroundColor(BuildContext context) {
    if (textColor != null) return textColor!;

    final theme = Theme.of(context);
    switch (variant) {
      case YoButtonVariant.outline:
      case YoButtonVariant.ghost:
        return theme.colorScheme.primary;
      default:
        return theme.colorScheme.onPrimary;
    }
  }

  Color _getCustomTextColor(BuildContext context, Color bgColor) {
    if (textColor != null) return textColor!;

    // Calculate luminance to determine if text should be light or dark
    final luminance = bgColor.computeLuminance();
    return luminance > 0.5 ? Colors.black : Colors.white;
  }

  Color _getProgressIndicatorColor(BuildContext context) {
    switch (variant) {
      case YoButtonVariant.primary:
      case YoButtonVariant.secondary:
      case YoButtonVariant.custom:
        return Theme.of(context).colorScheme.onPrimary;
      case YoButtonVariant.outline:
      case YoButtonVariant.ghost:
        return Theme.of(context).colorScheme.primary;
    }
  }

  TextStyle _getTextStyle(BuildContext context) {
    final theme = Theme.of(context);
    final baseTextStyle = theme.textTheme;

    Color? textColor;
    switch (variant) {
      case YoButtonVariant.primary:
      case YoButtonVariant.secondary:
      case YoButtonVariant.custom:
        textColor = this.textColor ?? theme.colorScheme.onPrimary;
        break;
      case YoButtonVariant.outline:
      case YoButtonVariant.ghost:
        textColor = this.textColor ?? theme.colorScheme.primary;
        break;
    }

    switch (size) {
      case YoButtonSize.small:
        return baseTextStyle.labelMedium!.copyWith(
          color: textColor,
          fontWeight: FontWeight.w500,
        );
      case YoButtonSize.medium:
        return baseTextStyle.bodyMedium!.copyWith(
          color: textColor,
          fontWeight: FontWeight.w500,
        );
      case YoButtonSize.large:
        return baseTextStyle.bodyLarge!.copyWith(
          color: textColor,
          fontWeight: FontWeight.w600,
        );
    }
  }

  double _getIconSpacing() {
    switch (size) {
      case YoButtonSize.small:
        return 6;
      case YoButtonSize.medium:
        return 8;
      case YoButtonSize.large:
        return 10;
    }
  }

  double _getIconSize() {
    switch (size) {
      case YoButtonSize.small:
        return 16;
      case YoButtonSize.medium:
        return 18;
      case YoButtonSize.large:
        return 20;
    }
  }
}
