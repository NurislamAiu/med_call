import 'package:flutter/material.dart';

import '../core/router/router.dart';
import '../core/router/router_paths.dart';
import '../core/theme/theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: RouterPaths.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}