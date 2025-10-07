import 'package:flutter/material.dart';
import 'package:yo_ui/yo_ui.dart';

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
    // final onPrimary = theme.colorScheme.onPrimary;
    final disabledGray = theme.disabledColor;

    switch (variant) {
      case YoButtonVariant.primary:
        return ElevatedButton.styleFrom(
          backgroundColor: primary,

          disabledBackgroundColor: disabledGray,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      case YoButtonVariant.secondary:
        return ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.secondary,

          disabledBackgroundColor: disabledGray,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      case YoButtonVariant.outline:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: _foregroundColor(context),
          disabledBackgroundColor: Colors.transparent,
          side: BorderSide(color: onPressed != null ? primary : disabledGray),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
      case YoButtonVariant.ghost:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: _foregroundColor(context),
          disabledBackgroundColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        );
    }
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case YoButtonSize.small: // font 12 → total tinggi ~32 dp
        return const EdgeInsets.symmetric(horizontal: 10, vertical: 6);
      case YoButtonSize.medium: // font 14 → total tinggi ~46 dp
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
      case YoButtonSize.large: // font 16 → total tinggi ~54 dp
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 12);
    }
  }

  TextStyle _getTextStyle(BuildContext ctx) {
    final base = Theme.of(ctx).textTheme;
    switch (size) {
      case YoButtonSize.small:
        return base.bodySmall!.copyWith(color: ctx.textColor);
      case YoButtonSize.medium:
        return base.bodyMedium!.copyWith(color: ctx.textColor);
      case YoButtonSize.large:
        return base.bodyLarge!.copyWith(color: ctx.textColor);
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

  Color? _foregroundColor(BuildContext context) {
    // kalau user secara eksplisit mau warna lain lewat ctor
    if (textColor != null) return textColor;

    // outline & ghost tetap pakai warna primer (atau onPrimary kalau disabled)
    switch (variant) {
      case YoButtonVariant.outline:
      case YoButtonVariant.ghost:
        return Theme.of(context).colorScheme.primary;
      case YoButtonVariant.primary:
      case YoButtonVariant.secondary:
        return null; // <- biar warna didapat dari TextStyle
    }
  }
}
