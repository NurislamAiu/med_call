import 'package:flutter/material.dart';
import '../core/router/router.dart';
import '../core/router/router_paths.dart';
import '../core/theme/theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Med Call',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: RouterPaths.home,
    );
  }
}