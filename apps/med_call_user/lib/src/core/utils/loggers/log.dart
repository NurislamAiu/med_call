
import 'info.dart';
import 'error.dart';

/// Главный логгер, делегирует логирование
class AppLog {
  static void info(String message) => AppLogInfo.log(message);
  static void error(String message, [Object? error]) => AppLogError.log(message, error);
}