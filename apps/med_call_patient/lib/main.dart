import 'package:flutter/material.dart';
import 'src/app/app_initializer.dart';
import 'src/app/application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp();
  runApp(const Application());
}