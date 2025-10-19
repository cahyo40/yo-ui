import 'package:flutter/material.dart';
import 'package:yo_ui/yo_ui.dart';

/// Versi tunggal (1 file) dari YoButton.
/// - textColor : warna teks (null = pakai warna tema).
/// - icon      : widget ikon opsional.
/// - iconPosition : kiri / kanan (enum).
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
  final Color? backgroundColor; // <--- untuk variant custom
  final bool isLoading;
  final bool expanded;

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
  });

  // Named constructors (opsional, tetap tersedia)
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
  }) : variant = YoButtonVariant.ghost,
       backgroundColor = null;

  /// Constructor untuk custom warna background
  /// Constructor untuk custom warna background
  const YoButton.custom({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor, // <-- tidak lagi required
    this.size = YoButtonSize.medium,
    this.icon,
    this.iconPosition = IconPosition.left,
    this.textColor,
    this.isLoading = false,
    this.expanded = false,
  }) : variant = YoButtonVariant.custom;
  @override
  Widget build(BuildContext context) {
    final buttonStyle = _getButtonStyle(context);
    final padding = _getPadding();
    final textStyle = _getTextStyle(context);

    Widget contents = isLoading
        ? const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : Row(
            mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: _textWithIcon(textStyle),
          );

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

    return iconPosition == IconPosition.right
        ? [textWidget, gap, icon!]
        : [icon!, gap, textWidget];
  }

  ButtonStyle _getButtonStyle(BuildContext context) {
    final theme = Theme.of(context);
    final primary = theme.colorScheme.primary;
    final disabledGray = theme.disabledColor;

    switch (variant) {
      case YoButtonVariant.primary:
        return ElevatedButton.styleFrom(
          backgroundColor: primary,
          disabledBackgroundColor: disabledGray,
          elevation: 0,
          shape: _shape(),
        );
      case YoButtonVariant.secondary:
        return ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.secondary,
          disabledBackgroundColor: disabledGray,
          elevation: 0,
          shape: _shape(),
        );
      case YoButtonVariant.outline:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: _foregroundColor(context),
          disabledBackgroundColor: Colors.transparent,
          side: BorderSide(color: onPressed != null ? primary : disabledGray),
          elevation: 0,
          shape: _shape(),
        );
      case YoButtonVariant.ghost:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: _foregroundColor(context),
          disabledBackgroundColor: Colors.transparent,
          elevation: 0,
          shape: _shape(),
        );
      case YoButtonVariant.custom:
        final bg = backgroundColor ?? Theme.of(context).colorScheme.primary;
        return ElevatedButton.styleFrom(
          backgroundColor: bg,
          disabledBackgroundColor: bg.withValues(alpha: 0.32),
          elevation: 0,
          shape: _shape(),
        );
    }
  }

  OutlinedBorder _shape() =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));

  EdgeInsets _getPadding() {
    switch (size) {
      case YoButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 10, vertical: 6);
      case YoButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
      case YoButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 12);
    }
  }

  Color? _foregroundColor(BuildContext context) {
    // Jika user paksa textColor, itu yang dipakai
    if (textColor != null) return textColor;

    switch (variant) {
      case YoButtonVariant.outline:
      case YoButtonVariant.ghost:
        return Theme.of(context).colorScheme.primary;
      case YoButtonVariant.primary:
      case YoButtonVariant.secondary:
      case YoButtonVariant.custom:
        return null; // biar warna didapat dari TextStyle
    }
  }

  TextStyle _getTextStyle(BuildContext ctx) {
    final base = Theme.of(ctx).textTheme;
    final color =
        textColor ??
        ((variant == YoButtonVariant.primary ||
                variant == YoButtonVariant.secondary ||
                variant == YoButtonVariant.custom)
            ? ctx.colorTextBtn
            : ctx.textColor);

    switch (size) {
      case YoButtonSize.small:
        return base.bodySmall!.copyWith(color: color);
      case YoButtonSize.medium:
        return base.bodyMedium!.copyWith(color: color);
      case YoButtonSize.large:
        return base.bodyLarge!.copyWith(color: color);
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
}
