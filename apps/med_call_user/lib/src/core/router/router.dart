import 'package:flutter/material.dart';
import 'package:med_call_user/src/features/home/presentation/pages/home_screen.dart';
import 'router_paths.dart';
import '../../features/splash/presentation/pages/splash_screen.dart';

/// Главный RouteGenerator, который используется в `MaterialApp`
class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterPaths.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouterPaths.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());


      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('404: Route Not Found')),
          ),
        );
    }
  }
}