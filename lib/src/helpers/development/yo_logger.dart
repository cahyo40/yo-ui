// ignore_for_file: avoid_print

import 'package:intl/intl.dart';

class YoLogger {
  static YoLogLevel _level = YoLogLevel.debug;
  static bool _enable = true;
  static final List<YoLogEvent> _history = [];
  static const int _maxHistorySize = 1000;

  static void setLevel(YoLogLevel level) {
    _level = level;
  }

  static void enable() {
    _enable = true;
  }

  static void disable() {
    _enable = false;
  }

  static void debug(String message, {dynamic data, String? tag}) {
    _log(YoLogLevel.debug, message, data: data, tag: tag);
  }

  static void info(String message, {dynamic data, String? tag}) {
    _log(YoLogLevel.info, message, data: data, tag: tag);
  }

  static void warning(String message, {dynamic data, String? tag}) {
    _log(YoLogLevel.warning, message, data: data, tag: tag);
  }

  static void error(
    String message, {
    dynamic error,
    StackTrace? stackTrace,
    String? tag,
  }) {
    _log(
      YoLogLevel.error,
      message,
      error: error,
      stackTrace: stackTrace,
      tag: tag,
    );
  }

  static void critical(
    String message, {
    dynamic error,
    StackTrace? stackTrace,
    String? tag,
  }) {
    _log(
      YoLogLevel.critical,
      message,
      error: error,
      stackTrace: stackTrace,
      tag: tag,
    );
  }

  static void _log(
    YoLogLevel level,
    String message, {
    dynamic data,
    dynamic error,
    StackTrace? stackTrace,
    String? tag,
  }) {
    if (!_enable || level.index < _level.index) return;

    final event = YoLogEvent(
      level: level,
      message: message,
      data: data,
      error: error,
      stackTrace: stackTrace,
      tag: tag,
      timestamp: DateTime.now(),
    );

    // Add to history
    _history.add(event);
    if (_history.length > _maxHistorySize) {
      _history.removeAt(0);
    }

    // Print to console
    _printToConsole(event);
  }

  static void _printToConsole(YoLogEvent event) {
    final levelPrefix = _getLevelPrefix(event.level);
    final time = DateFormat('HH:mm:ss').format(event.timestamp);
    final tag = event.tag != null ? '[${event.tag}] ' : '';

    print('$levelPrefix$time $tag${event.message}');

    if (event.data != null) {
      print('  Data: ${event.data}');
    }

    if (event.error != null) {
      print('  Error: ${event.error}');
    }

    if (event.stackTrace != null) {
      print('  StackTrace: ${event.stackTrace}');
    }
  }

  static String _getLevelPrefix(YoLogLevel level) {
    switch (level) {
      case YoLogLevel.debug:
        return '🐛 DEBUG ';
      case YoLogLevel.info:
        return 'ℹ️ INFO ';
      case YoLogLevel.warning:
        return '⚠️ WARN ';
      case YoLogLevel.error:
        return '❌ ERROR ';
      case YoLogLevel.critical:
        return '🚨 CRITICAL ';
    }
  }

  // Get log history
  static List<YoLogEvent> getHistory() => List.unmodifiable(_history);

  // Clear log history
  static void clearHistory() {
    _history.clear();
  }

  // Export logs as string
  static String exportLogs() {
    final buffer = StringBuffer();
    for (final event in _history) {
      buffer.writeln(
        '${event.timestamp} [${event.level.name}] ${event.tag ?? ''} ${event.message}',
      );
      if (event.data != null) {
        buffer.writeln('  Data: ${event.data}');
      }
      if (event.error != null) {
        buffer.writeln('  Error: ${event.error}');
      }
    }
    return buffer.toString();
  }

  // Performance logging
  static T trackPerformance<T>(String operation, T Function() function) {
    final stopwatch = Stopwatch()..start();
    try {
      return function();
    } finally {
      stopwatch.stop();
      debug('$operation completed in ${stopwatch.elapsedMilliseconds}ms');
    }
  }

  static Future<T> trackPerformanceAsync<T>(
    String operation,
    Future<T> Function() function,
  ) async {
    final stopwatch = Stopwatch()..start();
    try {
      return await function();
    } finally {
      stopwatch.stop();
      debug('$operation completed in ${stopwatch.elapsedMilliseconds}ms');
    }
  }
}

class YoLogEvent {
  final YoLogLevel level;
  final String message;
  final dynamic data;
  final dynamic error;
  final StackTrace? stackTrace;
  final String? tag;
  final DateTime timestamp;

  YoLogEvent({
    required this.level,
    required this.message,
    this.data,
    this.error,
    this.stackTrace,
    this.tag,
    required this.timestamp,
  });
}

enum YoLogLevel {
  debug(0),
  info(1),
  warning(2),
  error(3),
  critical(4);

  const YoLogLevel(this.value);
  final int value;

  String get name => toString().split('.').last;
}
