import 'dart:async';

/// Класс для ограничения частоты вызова функции (throttle).
class Throttler {
  final Duration delay;
  Timer? _timer;

  Throttler({required this.delay});

  void call(void Function() action) {
    if (_timer?.isActive ?? false) return;
    _timer = Timer(delay, action);
  }
}