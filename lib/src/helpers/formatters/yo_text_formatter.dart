class YoTextFormatter {
  // Phone Number Formatting dengan international support
  static String formatPhoneNumber(String phone, {String countryCode = 'ID'}) {
    final cleaned = phone.replaceAll(RegExp(r'[^\d+]'), '');

    switch (countryCode.toUpperCase()) {
      case 'ID': // Indonesia
        return _formatIndonesianPhone(cleaned);
      case 'US': // United States
        return _formatUSPhone(cleaned);
      case 'SG': // Singapore
        return _formatSingaporePhone(cleaned);
      default:
        return phone;
    }
  }

  static String _formatIndonesianPhone(String cleaned) {
    if (cleaned.startsWith('+62')) {
      return '+62 ${cleaned.substring(3, 6)}-${cleaned.substring(6, 10)}-${cleaned.substring(10)}';
    } else if (cleaned.startsWith('62')) {
      return '+62 ${cleaned.substring(2, 5)}-${cleaned.substring(5, 9)}-${cleaned.substring(9)}';
    } else if (cleaned.startsWith('0')) {
      return '+62 ${cleaned.substring(1, 4)}-${cleaned.substring(4, 8)}-${cleaned.substring(8)}';
    }
    return cleaned;
  }

  static String _formatUSPhone(String cleaned) {
    if (cleaned.startsWith('+1')) {
      return '+1 (${cleaned.substring(2, 5)}) ${cleaned.substring(5, 8)}-${cleaned.substring(8)}';
    } else if (cleaned.startsWith('1')) {
      return '+1 (${cleaned.substring(1, 4)}) ${cleaned.substring(4, 7)}-${cleaned.substring(7)}';
    } else if (cleaned.length == 10) {
      return '(${cleaned.substring(0, 3)}) ${cleaned.substring(3, 6)}-${cleaned.substring(6)}';
    }
    return cleaned;
  }

  static String _formatSingaporePhone(String cleaned) {
    if (cleaned.startsWith('+65')) {
      return '+65 ${cleaned.substring(3, 7)} ${cleaned.substring(7)}';
    } else if (cleaned.startsWith('65')) {
      return '+65 ${cleaned.substring(2, 6)} ${cleaned.substring(6)}';
    } else if (cleaned.length == 8) {
      return '+65 $cleaned';
    }
    return cleaned;
  }

  // Capitalize First Letter
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  // Title Case
  static String titleCase(String text) {
    if (text.isEmpty) return text;
    return text.split(' ').map((word) => capitalize(word)).join(' ');
  }

  // Mask Email
  static String maskEmail(String email) {
    final parts = email.split('@');
    if (parts.length != 2) return email;

    final username = parts[0];
    final domain = parts[1];

    if (username.length <= 2) {
      return '$username****@$domain';
    }

    final maskedUsername = username.substring(0, 2) + '*' * 3;
    return '$maskedUsername@$domain';
  }

  // Mask Phone Number
  static String maskPhone(String phone) {
    final cleaned = phone.replaceAll(RegExp(r'[^\d]'), '');

    if (cleaned.length <= 4) {
      return '*' * cleaned.length;
    }

    final visibleDigits = cleaned.substring(cleaned.length - 4);
    return '****$visibleDigits';
  }
}
