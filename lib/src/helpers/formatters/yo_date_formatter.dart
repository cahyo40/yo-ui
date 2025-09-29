import 'package:intl/intl.dart';

class YoDateFormatter {
  // === BASIC FORMATTING ===

  // Date Formats - tanpa locale parameter
  static String formatDate(DateTime date, {String format = 'dd MMM yyyy'}) {
    final dateFormat = DateFormat(format);
    return dateFormat.format(date);
  }

  static String formatDateTime(
    DateTime date, {
    String format = 'dd MMM yyyy HH:mm',
  }) {
    final dateFormat = DateFormat(format);
    return dateFormat.format(date);
  }

  static String formatTime(DateTime date, {String format = 'HH:mm'}) {
    final dateFormat = DateFormat(format);
    return dateFormat.format(date);
  }

  // === RELATIVE TIME ===

  static String formatRelativeTime(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    return _formatRelativeTime(date, difference);
  }

  static String _formatRelativeTime(DateTime date, Duration difference) {
    if (difference.inDays == 0) {
      if (difference.inHours == 0) {
        if (difference.inMinutes == 0) {
          return 'Baru saja';
        }
        return '${difference.inMinutes} menit lalu';
      }
      return '${difference.inHours} jam lalu';
    } else if (difference.inDays == 1) {
      return 'Kemarin';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} hari lalu';
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      return '$weeks minggu lalu';
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return '$months bulan lalu';
    } else {
      final years = (difference.inDays / 365).floor();
      return '$years tahun lalu';
    }
  }

  // === DATE COMPARISON HELPERS ===

  static bool isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  static bool isYesterday(DateTime date) {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return date.year == yesterday.year &&
        date.month == yesterday.month &&
        date.day == yesterday.day;
  }

  static bool isTomorrow(DateTime date) {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return date.year == tomorrow.year &&
        date.month == tomorrow.month &&
        date.day == tomorrow.day;
  }

  static bool isThisWeek(DateTime date) {
    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday - 1));
    final endOfWeek = startOfWeek.add(const Duration(days: 6));
    return date.isAfter(startOfWeek) && date.isBefore(endOfWeek);
  }

  static bool isThisMonth(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month;
  }

  static bool isThisYear(DateTime date) {
    return date.year == DateTime.now().year;
  }

  // === DATE MANIPULATION ===

  static DateTime startOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  static DateTime endOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day, 23, 59, 59);
  }

  static DateTime startOfWeek(DateTime date) {
    return date.subtract(Duration(days: date.weekday - 1));
  }

  static DateTime endOfWeek(DateTime date) {
    return date.add(Duration(days: DateTime.daysPerWeek - date.weekday));
  }

  static DateTime startOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  static DateTime endOfMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, 0);
  }

  static DateTime addDays(DateTime date, int days) {
    return date.add(Duration(days: days));
  }

  static DateTime subtractDays(DateTime date, int days) {
    return date.subtract(Duration(days: days));
  }

  // === DATE RANGE HELPERS ===

  static String formatDateRange(DateTime start, DateTime end) {
    if (start.year == end.year &&
        start.month == end.month &&
        start.day == end.day) {
      return '${formatDate(start)} • ${formatTime(start)} - ${formatTime(end)}';
    } else if (start.year == end.year) {
      return '${formatDate(start, format: 'dd MMM')} - ${formatDate(end)}';
    } else {
      return '${formatDate(start)} - ${formatDate(end)}';
    }
  }

  static List<DateTime> getDaysInRange(DateTime start, DateTime end) {
    final days = <DateTime>[];
    var current = startOfDay(start);
    final endDate = startOfDay(end);

    while (current.isBefore(endDate) || current.isAtSameMomentAs(endDate)) {
      days.add(current);
      current = current.add(const Duration(days: 1));
    }

    return days;
  }

  static int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  // === AGE CALCULATION ===

  static int calculateAge(DateTime birthDate) {
    final now = DateTime.now();
    int age = now.year - birthDate.year;
    if (now.month < birthDate.month ||
        (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }
    return age;
  }

  static String formatAge(DateTime birthDate) {
    final age = calculateAge(birthDate);
    return '$age tahun';
  }

  // === DURATION FORMATTING ===

  static String formatDuration(Duration duration) {
    if (duration.inHours > 0) {
      return '${duration.inHours} jam ${duration.inMinutes.remainder(60)} menit';
    } else if (duration.inMinutes > 0) {
      return '${duration.inMinutes} menit';
    } else {
      return '${duration.inSeconds} detik';
    }
  }

  static String formatDurationShort(Duration duration) {
    if (duration.inHours > 0) {
      return '${duration.inHours}j ${duration.inMinutes.remainder(60)}m';
    } else if (duration.inMinutes > 0) {
      return '${duration.inMinutes}m';
    } else {
      return '${duration.inSeconds}d';
    }
  }

  // === CALENDAR HELPERS ===

  static String getMonthName(int month) {
    final date = DateTime(2023, month);
    final format = DateFormat('MMMM');
    return format.format(date);
  }

  static String getDayName(DateTime date) {
    final format = DateFormat('EEEE');
    return format.format(date);
  }

  static String getShortDayName(DateTime date) {
    final format = DateFormat('E');
    return format.format(date);
  }

  static String getRelativeDay(DateTime date) {
    if (isToday(date)) return 'Hari ini';
    if (isYesterday(date)) return 'Kemarin';
    if (isTomorrow(date)) return 'Besok';
    return formatDate(date);
  }

  // === LIST GENERATORS ===

  static List<String> getMonthNames() {
    return List.generate(12, (index) => getMonthName(index + 1));
  }

  static List<String> getShortMonthNames() {
    final format = DateFormat('MMM');
    return List.generate(
      12,
      (index) => format.format(DateTime(2023, index + 1)),
    );
  }

  static List<String> getDayNames() {
    final days = <String>[];
    final today = DateTime.now();
    for (int i = 0; i < 7; i++) {
      days.add(getDayName(today.add(Duration(days: i))));
    }
    return days;
  }

  static List<String> getShortDayNames() {
    final format = DateFormat('E');
    final days = <String>[];
    final today = DateTime.now();
    for (int i = 0; i < 7; i++) {
      days.add(format.format(today.add(Duration(days: i))));
    }
    return days;
  }

  // === WORKDAY HELPERS ===

  static bool isWeekend(DateTime date) {
    return date.weekday == DateTime.saturday || date.weekday == DateTime.sunday;
  }

  static bool isWeekday(DateTime date) {
    return !isWeekend(date);
  }

  static DateTime nextWeekday(DateTime date) {
    var next = date.add(const Duration(days: 1));
    while (isWeekend(next)) {
      next = next.add(const Duration(days: 1));
    }
    return next;
  }

  static DateTime previousWeekday(DateTime date) {
    var previous = date.subtract(const Duration(days: 1));
    while (isWeekend(previous)) {
      previous = previous.subtract(const Duration(days: 1));
    }
    return previous;
  }

  // === VALIDATION HELPERS ===

  static bool isAfterToday(DateTime date) {
    return date.isAfter(DateTime.now());
  }

  static bool isBeforeToday(DateTime date) {
    return date.isBefore(DateTime.now());
  }

  // === TIMESTAMP CONVERSION ===

  static DateTime fromTimestamp(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  static int toTimestamp(DateTime date) {
    return date.millisecondsSinceEpoch;
  }

  // === SPECIAL DATES ===

  static bool isBirthday(DateTime birthDate) {
    final now = DateTime.now();
    return now.month == birthDate.month && now.day == birthDate.day;
  }

  static int daysUntilBirthday(DateTime birthDate) {
    final now = DateTime.now();
    var nextBirthday = DateTime(now.year, birthDate.month, birthDate.day);

    if (nextBirthday.isBefore(now)) {
      nextBirthday = DateTime(now.year + 1, birthDate.month, birthDate.day);
    }

    return daysBetween(now, nextBirthday);
  }
}
