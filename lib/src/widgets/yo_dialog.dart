import 'package:flutter/material.dart';

import '../../yo_ui_base.dart';

class YoDialog extends StatelessWidget {
  final String title;
  final String content;
  final List<Widget>? actions;
  final Widget? icon;
  final Color? iconColor;
  final double? maxWidth;

  const YoDialog({
    super.key,
    required this.title,
    required this.content,
    this.actions,
    this.icon,
    this.iconColor,
    this.maxWidth,
  });

  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required String content,
    List<Widget>? actions,
    Widget? icon,
    Color? iconColor,
    bool barrierDismissible = true,
    double? maxWidth,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => YoDialog(
        title: title,
        content: content,
        actions: actions,
        icon: icon,
        iconColor: iconColor,
        maxWidth: maxWidth,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: YoColors.background(context),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth ?? 400),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (icon != null) ...[
                _buildIcon(context),
                const SizedBox(height: 16),
              ],
              YoText.titleLarge(
                title,
                align: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
              YoText.bodyMedium(
                content,
                align: TextAlign.center,
                color: YoColors.gray600(context),
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
              ),
              if (actions != null && actions!.isNotEmpty) ...[
                const SizedBox(height: 24),
                _buildActions(context),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:
            iconColor?.withValues(alpha: 0.1) ??
            Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: IconTheme(
        data: IconThemeData(
          color: iconColor ?? Theme.of(context).colorScheme.primary,
          size: 24,
        ),
        child: icon!,
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    if (actions!.length == 1) {
      return SizedBox(width: double.infinity, child: actions!.first);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children:
          actions!
              .map((action) => Flexible(child: action))
              .expand((widget) => [widget, const SizedBox(width: 12)])
              .toList()
            ..removeLast(), // Remove last SizedBox
    );
  }
}
