import 'package:intl/intl.dart';

class YoCurrencyFormatter {
  // Currency Formatting dengan locale support
  static String formatCurrency(
    double amount, {
    String? symbol,
    int decimalDigits = 0,
    String locale = 'id_ID',
  }) {
    final format = NumberFormat.currency(
      locale: locale,
      symbol: symbol ?? _getDefaultSymbol(locale),
      decimalDigits: decimalDigits,
    );
    return format.format(amount);
  }

  static String _getDefaultSymbol(String locale) {
    switch (locale) {
      case 'id_ID':
        return 'Rp';
      case 'en_US':
        return '\$';
      case 'en_GB':
        return '£';
      case 'ja_JP':
        return '¥';
      default:
        return '';
    }
  }

  // Number Formatting
  static String formatNumber(
    double number, {
    int decimalDigits = 0,
    String locale = 'id_ID',
  }) {
    final format = NumberFormat(
      '#,##0${decimalDigits > 0 ? '.${'0' * decimalDigits}' : ''}',
      locale,
    );
    return format.format(number);
  }

  // Compact Number Formatting (1K, 1M, 1B)
  static String formatCompactNumber(double number, {String locale = 'id_ID'}) {
    final format = NumberFormat.compact(locale: locale);
    return format.format(number);
  }

  // Percentage Formatting
  static String formatPercentage(
    double value, {
    int decimalDigits = 1,
    String locale = 'id_ID',
  }) {
    final percentage = value * 100;
    final format = NumberFormat(
      '0${decimalDigits > 0 ? '.${'0' * decimalDigits}' : ''}',
      locale,
    );
    return '${format.format(percentage)}%';
  }
}
