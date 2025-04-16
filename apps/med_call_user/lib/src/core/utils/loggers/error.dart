/// Логгер для ошибок
class AppLogError {
  static void log(String message, [Object? error]) {
    final now = DateTime.now().toIso8601String();
    print('[ERROR] [$now] $message');
    if (error != null) print('Details: $error');
  }
}