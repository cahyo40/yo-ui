import 'package:flutter/material.dart';

import '../../yo_ui_base.dart';

class YoDialog extends StatelessWidget {
  final String title;
  final String content;
  final List<Widget>? actions;
  final Widget? icon;
  final Color? iconColor;

  const YoDialog({
    super.key,
    required this.title,
    required this.content,
    this.actions,
    this.icon,
    this.iconColor,
  });

  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required String content,
    List<Widget>? actions,
    Widget? icon,
    Color? iconColor,
    bool barrierDismissible = true,
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: YoColors.background(context),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (icon != null) ...[
              Center(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color:
                        iconColor?.withValues(alpha: 0.1) ??
                        YoColors.primary(context).withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: IconTheme(
                    data: IconThemeData(
                      color: iconColor ?? YoColors.primary(context),
                      size: 24,
                    ),
                    child: icon!,
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
            YoText.titleLarge(title, align: TextAlign.center),
            const SizedBox(height: 12),
            YoText.bodyMedium(
              content,
              align: TextAlign.center,
              color: YoColors.gray600(context),
            ),
            if (actions != null) ...[
              const SizedBox(height: 24),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: actions!),
            ],
          ],
        ),
      ),
    );
  }
}
