/// Логгер для информационных сообщений
class AppLogInfo {
  static void log(String message) {
    final now = DateTime.now().toIso8601String();
    print('[INFO] [$now] $message');
  }
}