import 'package:flutter/widgets.dart';
import '../core/service/injectable/service_locator.dart';
import '../core/service/storage/key_value/shared_prefs_helper.dart';

/// Инициализация зависимостей, SharedPreferences и других сервисов
Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await SharedPrefsHelper.init();
}