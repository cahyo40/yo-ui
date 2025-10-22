import 'package:flutter/material.dart';

class YoInputDecoration {
  /// Default input decoration - Modern rounded with subtle shadow
  static InputDecoration defaultTheme({
    required BuildContext context,
    String? labelText,
    String? hintText,
    String? errorText,
    String? helperText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool isFocused = false,
    bool hasError = false,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    final borderColor = hasError
        ? colorScheme.error
        : isFocused
        ? colorScheme.primary
        : theme.dividerColor;

    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      errorText: errorText,
      helperText: helperText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      // Border styling
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: borderColor.withValues(alpha: 0.4),
          width: 1.5,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.primary, width: 2.0),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.error, width: 2.0),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.error, width: 2.0),
      ),

      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: theme.disabledColor.withValues(alpha: 0.3),
          width: 1.0,
        ),
      ),

      // Fill color
      filled: true,
      fillColor: isDark
          ? colorScheme.surface.withValues(alpha: 0.6)
          : colorScheme.surface,

      // Label styling
      labelStyle: theme.textTheme.bodyMedium?.copyWith(
        color: theme.hintColor,
        fontWeight: FontWeight.w500,
      ),

      // Hint styling
      hintStyle: theme.textTheme.bodyMedium?.copyWith(color: theme.hintColor),

      // Error styling
      errorStyle: theme.textTheme.bodySmall?.copyWith(
        color: colorScheme.error,
        fontWeight: FontWeight.w500,
      ),

      // Helper text styling
      helperStyle: theme.textTheme.bodySmall?.copyWith(color: theme.hintColor),

      // Icon color
      prefixIconColor: hasError
          ? colorScheme.error
          : isFocused
          ? colorScheme.primary
          : theme.hintColor,

      suffixIconColor: hasError
          ? colorScheme.error
          : isFocused
          ? colorScheme.primary
          : theme.hintColor,
    );
  }

  /// Minimalist theme - Clean borders without fill
  static InputDecoration minimalist({
    required BuildContext context,
    String? labelText,
    String? hintText,
    String? errorText,
    String? helperText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool isFocused = false,
    bool hasError = false,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final borderColor = hasError
        ? colorScheme.error
        : isFocused
        ? colorScheme.primary
        : theme.dividerColor;

    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      errorText: errorText,
      helperText: helperText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
      isDense: true,

      // Border styling - Underline only
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: borderColor.withValues(alpha: 0.6),
          width: 1.5,
        ),
      ),

      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: colorScheme.primary, width: 2.0),
      ),

      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: colorScheme.error, width: 2.0),
      ),

      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: colorScheme.error, width: 2.0),
      ),

      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: theme.disabledColor.withValues(alpha: 0.3),
          width: 1.0,
        ),
      ),

      // No fill
      filled: false,

      // Label styling
      labelStyle: theme.textTheme.bodyMedium?.copyWith(
        color: theme.hintColor,
        fontWeight: FontWeight.w500,
      ),

      // Hint styling
      hintStyle: theme.textTheme.bodyMedium?.copyWith(color: theme.hintColor),

      // Error styling
      errorStyle: theme.textTheme.bodySmall?.copyWith(
        color: colorScheme.error,
        fontWeight: FontWeight.w500,
      ),

      // Icon color
      prefixIconColor: hasError
          ? colorScheme.error
          : isFocused
          ? colorScheme.primary
          : theme.hintColor,

      suffixIconColor: hasError
          ? colorScheme.error
          : isFocused
          ? colorScheme.primary
          : theme.hintColor,
    );
  }

  /// Filled theme - Soft background with subtle borders
  static InputDecoration filled({
    required BuildContext context,
    String? labelText,
    String? hintText,
    String? errorText,
    String? helperText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool isFocused = false,
    bool hasError = false,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    final borderColor = hasError
        ? colorScheme.error
        : isFocused
        ? colorScheme.primary
        : Colors.transparent;

    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      errorText: errorText,
      helperText: helperText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      // Border styling - Subtle with focus state
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: borderColor.withValues(alpha: 0.3),
          width: 1.0,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorScheme.primary, width: 2.0),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorScheme.error, width: 2.0),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorScheme.error, width: 2.0),
      ),

      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: theme.disabledColor.withValues(alpha: 0.2),
          width: 1.0,
        ),
      ),

      // Fill color - Soft background
      filled: true,
      fillColor: isDark
          ? colorScheme.surface.withValues(alpha: 0.8)
          : colorScheme.surface.withValues(alpha: 0.6),

      // Label styling
      labelStyle: theme.textTheme.bodyMedium?.copyWith(
        color: theme.hintColor,
        fontWeight: FontWeight.w500,
      ),

      // Hint styling
      hintStyle: theme.textTheme.bodyMedium?.copyWith(color: theme.hintColor),

      // Error styling
      errorStyle: theme.textTheme.bodySmall?.copyWith(
        color: colorScheme.error,
        fontWeight: FontWeight.w500,
      ),

      // Icon color
      prefixIconColor: hasError
          ? colorScheme.error
          : isFocused
          ? colorScheme.primary
          : theme.hintColor,

      suffixIconColor: hasError
          ? colorScheme.error
          : isFocused
          ? colorScheme.primary
          : theme.hintColor,
    );
  }

  /// Modern theme - Glass morphism effect
  static InputDecoration modern({
    required BuildContext context,
    String? labelText,
    String? hintText,
    String? errorText,
    String? helperText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool isFocused = false,
    bool hasError = false,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    final borderColor = hasError
        ? colorScheme.error
        : isFocused
        ? colorScheme.primary
        : Colors.transparent;

    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      errorText: errorText,
      helperText: helperText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),

      // Border styling - Glass effect
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: borderColor.withValues(alpha: 0.2),
          width: 1.0,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: colorScheme.primary.withValues(alpha: 0.8),
          width: 1.5,
        ),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: colorScheme.error.withValues(alpha: 0.8),
          width: 1.5,
        ),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: colorScheme.error, width: 1.5),
      ),

      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: theme.disabledColor.withValues(alpha: 0.1),
          width: 1.0,
        ),
      ),

      // Fill color - Glass morphism
      filled: true,
      fillColor: isDark
          ? colorScheme.surface.withValues(alpha: 0.3)
          : colorScheme.surface.withValues(alpha: 0.4),

      // Label styling
      labelStyle: theme.textTheme.bodyLarge?.copyWith(
        color: theme.hintColor,
        fontWeight: FontWeight.w600,
      ),

      // Hint styling
      hintStyle: theme.textTheme.bodyLarge?.copyWith(
        color: theme.hintColor.withValues(alpha: 0.7),
      ),

      // Error styling
      errorStyle: theme.textTheme.bodySmall?.copyWith(
        color: colorScheme.error,
        fontWeight: FontWeight.w500,
      ),

      // Icon color
      prefixIconColor: hasError
          ? colorScheme.error
          : isFocused
          ? colorScheme.primary
          : theme.hintColor.withValues(alpha: 0.7),

      suffixIconColor: hasError
          ? colorScheme.error
          : isFocused
          ? colorScheme.primary
          : theme.hintColor.withValues(alpha: 0.7),
    );
  }

  /// Search theme - Optimized for search bars
  static InputDecoration search({
    required BuildContext context,
    String? hintText = "Search...",
    Widget? suffixIcon,
    bool isFocused = false,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    return InputDecoration(
      hintText: hintText,
      prefixIcon: const Icon(Icons.search, size: 20),
      suffixIcon: suffixIcon,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      isDense: true,

      // Border styling - Rounded search bar
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(
          color: theme.dividerColor.withValues(alpha: 0.4),
          width: 1.0,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: BorderSide(color: colorScheme.primary, width: 1.5),
      ),

      // Fill color
      filled: true,
      fillColor: isDark
          ? colorScheme.surface.withValues(alpha: 0.6)
          : colorScheme.surface,

      // Hint styling
      hintStyle: theme.textTheme.bodyMedium?.copyWith(color: theme.hintColor),

      // Icon color
      prefixIconColor: isFocused ? colorScheme.primary : theme.hintColor,

      suffixIconColor: isFocused ? colorScheme.primary : theme.hintColor,

      constraints: const BoxConstraints(maxHeight: 44),
    );
  }
}
