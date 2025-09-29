import '../helpers.dart';

class YoValidator {
  // Email Validation dengan pesan localized
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return YoLocalizationManager.current.validationRequired;
    }

    final emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

    if (!emailRegex.hasMatch(value)) {
      return YoLocalizationManager.current.validationEmail;
    }

    return null;
  }

  // Phone Number Validation
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return YoLocalizationManager.current.validationRequired;
    }

    final cleaned = value.replaceAll(RegExp(r'[^\d]'), '');

    if (cleaned.length < 10 || cleaned.length > 13) {
      return YoLocalizationManager.current.validationPhone;
    }

    return null;
  }

  // Required Field Validation
  static String? validateRequired(String? value, {String? fieldName}) {
    if (value == null || value.trim().isEmpty) {
      return YoLocalizationManager.current.validationRequired;
    }
    return null;
  }

  // Minimum Length Validation
  static String? validateMinLength(
    String? value,
    int minLength, {
    String? fieldName,
  }) {
    if (value == null || value.length < minLength) {
      return YoLocalizationManager.current.validationMinLength.replaceAll(
        '{length}',
        minLength.toString(),
      );
    }
    return null;
  }

  // Password Validation
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return YoLocalizationManager.current.validationRequired;
    }

    if (value.length < 8) {
      return YoLocalizationManager.current.validationMinLength.replaceAll(
        '{length}',
        '8',
      );
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return YoLocalizationManager.current.validationPassword;
    }

    if (!value.contains(RegExp(r'[a-z]'))) {
      return YoLocalizationManager.current.validationPassword;
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return YoLocalizationManager.current.validationPassword;
    }

    return null;
  }

  // Confirm Password Validation
  static String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return YoLocalizationManager.current.validationRequired;
    }

    if (value != password) {
      return YoLocalizationManager.current.validationConfirmPassword;
    }

    return null;
  }

  // URL Validation
  static String? validateUrl(String? value) {
    if (value == null || value.isEmpty) {
      return YoLocalizationManager.current.validationRequired;
    }

    final urlRegex = RegExp(
      r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$',
    );

    if (!urlRegex.hasMatch(value)) {
      return 'Format URL tidak valid';
    }

    return null;
  }
}
