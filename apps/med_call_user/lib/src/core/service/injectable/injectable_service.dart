// Аннотация для указания, что это injectable-модуль
import 'package:injectable/injectable.dart';
// Пример внешней зависимости
import 'package:dio/dio.dart';

/// Модуль, в котором регистрируются внешние зависимости (например, Dio, SharedPreferences).
/// Он будет автоматически подхвачен при генерации injectable_service.config.dart.
@module
abstract class InjectableModule {
  /// Пример: регистрация Dio как @lazySingleton
  @lazySingleton
  Dio dio() => Dio();
}