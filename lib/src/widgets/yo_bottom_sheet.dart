import 'package:flutter/material.dart';

import '../../yo_ui_base.dart';

class YoBottomSheet extends StatelessWidget {
  final String title;
  final Widget child;
  final List<Widget>? actions;
  final double? maxHeight;

  const YoBottomSheet({
    super.key,
    required this.title,
    required this.child,
    this.actions,
    this.maxHeight,
  });

  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required Widget child,
    List<Widget>? actions,
    double? maxHeight,
    bool isScrollControlled = true,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      backgroundColor: Colors.transparent,
      builder: (context) => YoBottomSheet(
        title: title,
        actions: actions,
        maxHeight: maxHeight,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final maxSheetHeight =
        maxHeight ?? MediaQuery.of(context).size.height * 0.8;

    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Drag handle
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: YoColors.gray300(context),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 12),
          // Content
          Container(
            constraints: BoxConstraints(maxHeight: maxSheetHeight),
            decoration: BoxDecoration(
              color: YoColors.background(context),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(child: YoText.titleLarge(title)),
                      if (actions != null) ...actions!,
                    ],
                  ),
                ),
                // Divider
                Container(height: 1, color: YoColors.gray200(context)),
                // Scrollable content
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: child,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
