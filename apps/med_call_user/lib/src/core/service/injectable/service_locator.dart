// Импортируем get_it — сервис-локатор
import 'package:get_it/get_it.dart';
// Импортируем аннотацию для генерации зависимостей
import 'package:injectable/injectable.dart';
// Сгенерированный файл с регистрацией всех зависимостей
import 'package:med_call_user/src/core/service/injectable/service_locator.config.dart';

// Создаём глобальный экземпляр GetIt
final GetIt getIt = GetIt.instance;

/// Метод, вызываемый в main(), чтобы инициализировать зависимости
@injectableInit
Future<void> configureDependencies() async => getIt.init();