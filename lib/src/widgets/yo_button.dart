import 'package:flutter/material.dart';

/// Versi tunggal (1 file) dari YoButton.
/// - textColor : warna teks (null = pakai warna tema).
/// - icon      : widget ikon opsional.
/// - iconPosition : "left" atau "right".
enum YoButtonVariant { primary, secondary, outline, ghost }

enum YoButtonSize { small, medium, large }

class YoButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final YoButtonVariant variant;
  final YoButtonSize size;
  final Widget? icon;
  final String iconPosition; // "left" atau "right"
  final Color? textColor; // <— tambahan
  final bool isLoading;
  final bool expanded;

  const YoButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.variant = YoButtonVariant.primary,
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = "left",
    this.textColor,
    this.isLoading = false,
    this.expanded = false,
  });

  // Named constructors (opsional, tetap tersedia)
  const YoButton.primary({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = "left",
    this.textColor,
    this.isLoading = false,
    this.expanded = false,
  }) : variant = YoButtonVariant.primary;

  const YoButton.secondary({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = "left",
    this.textColor,
    this.isLoading = false,
    this.expanded = false,
  }) : variant = YoButtonVariant.secondary;

  const YoButton.outline({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = "left",
    this.textColor,
    this.isLoading = false,
    this.expanded = false,
  }) : variant = YoButtonVariant.outline;

  const YoButton.ghost({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = "left",
    this.textColor,
    this.isLoading = false,
    this.expanded = false,
  }) : variant = YoButtonVariant.ghost;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = _getButtonStyle(context);
    final padding = _getPadding();
    final textStyle = _getTextStyle(context);

    Widget contents = isLoading
        ? SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: _loaderColor(context),
            ),
          )
        : Row(
            mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: _textWithIcon(textStyle),
          );

    if (expanded) contents = Expanded(child: contents);

    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: buttonStyle,
      child: Container(padding: padding, child: contents),
    );
  }

  List<Widget> _textWithIcon(TextStyle style) {
    final textWidget = Flexible(
      child: Text(text, style: style, textAlign: TextAlign.center),
    );
    final gap = SizedBox(width: _iconSpacing());

    if (icon == null) return [textWidget];

    return iconPosition.toLowerCase() == "right"
        ? [textWidget, gap, icon!]
        : [icon!, gap, textWidget];
  }

  ButtonStyle _getButtonStyle(BuildContext context) {
    final theme = Theme.of(context);
    final primary = theme.colorScheme.primary;
    final onPrimary = theme.colorScheme.onPrimary;
    final disabledGray = theme.disabledColor;

    switch (variant) {
      case YoButtonVariant.primary:
        return ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          disabledBackgroundColor: disabledGray,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      case YoButtonVariant.secondary:
        return ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.secondary,
          foregroundColor: theme.colorScheme.onSecondary,
          disabledBackgroundColor: disabledGray,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      case YoButtonVariant.outline:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: textColor ?? primary,
          disabledBackgroundColor: Colors.transparent,
          side: BorderSide(color: onPressed != null ? primary : disabledGray),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      case YoButtonVariant.ghost:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: textColor ?? primary,
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
    final base = Theme.of(ctx).textTheme;
    switch (size) {
      case YoButtonSize.small:
        return base.bodySmall!.copyWith(color: textColor);
      case YoButtonSize.medium:
        return base.bodyMedium!.copyWith(color: textColor);
      case YoButtonSize.large:
        return base.bodyLarge!.copyWith(color: textColor);
    }
  }

  double _iconSpacing() {
    switch (size) {
      case YoButtonSize.small:
        return 4;
      case YoButtonSize.medium:
        return 8;
      case YoButtonSize.large:
        return 12;
    }
  }

  Color _loaderColor(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    switch (variant) {
      case YoButtonVariant.primary:
      case YoButtonVariant.secondary:
        return Colors.white;
      case YoButtonVariant.outline:
      case YoButtonVariant.ghost:
        return primary;
    }
  }
}
