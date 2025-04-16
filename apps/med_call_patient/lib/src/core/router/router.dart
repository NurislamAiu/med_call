import 'package:flutter/material.dart';

import 'router_paths.dart';
import 'router_names.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterPaths.splash:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RouterNames.splash),
          builder: (_) => const Placeholder(), // SplashScreen()
        );
      case RouterPaths.login:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RouterNames.login),
          builder: (_) => const Placeholder(), // LoginScreen()
        );
      case RouterPaths.home:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RouterNames.home),
          builder: (_) => const Placeholder(), // HomeScreen()
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('404: Route Not Found')),
          ),
        );
    }
  }
}