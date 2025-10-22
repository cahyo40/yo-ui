import 'package:flutter/material.dart';

import '../../yo_ui_base.dart';

class YoConfirmDialog extends StatelessWidget {
  final String title;
  final String content;
  final String confirmText;
  final String cancelText;
  final VoidCallback onConfirm;
  final VoidCallback? onCancel;
  final Color? confirmColor;
  final bool isDestructive;
  final Widget? icon;

  const YoConfirmDialog({
    super.key,
    required this.title,
    required this.content,
    required this.confirmText,
    required this.onConfirm,
    this.cancelText = 'Batal',
    this.onCancel,
    this.confirmColor,
    this.isDestructive = false,
    this.icon,
  });

  static Future<bool?> show({
    required BuildContext context,
    required String title,
    required String content,
    required String confirmText,
    String cancelText = 'Batal',
    Color? confirmColor,
    bool isDestructive = false,
    Widget? icon,
    bool barrierDismissible = true,
  }) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => YoConfirmDialog(
        title: title,
        content: content,
        confirmText: confirmText,
        cancelText: cancelText,
        onConfirm: () => Navigator.of(context).pop(true),
        onCancel: () => Navigator.of(context).pop(false),
        confirmColor: confirmColor,
        isDestructive: isDestructive,
        icon: icon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final confirmButtonColor =
        confirmColor ??
        (isDestructive ? theme.colorScheme.error : theme.colorScheme.primary);

    return Dialog(
      backgroundColor: YoColors.background(context),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (icon != null) ...[
              Center(child: icon),
              const SizedBox(height: 16),
            ],
            YoText.titleLarge(title),
            const SizedBox(height: 12),
            YoText.bodyMedium(content, color: YoColors.gray600(context)),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: YoButton.outline(
                    text: cancelText,
                    onPressed:
                        onCancel ?? () => Navigator.of(context).pop(false),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: YoButton.custom(
                    text: confirmText,
                    onPressed: onConfirm,
                    backgroundColor: confirmButtonColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
