import 'package:flutter/material.dart';
import 'src/app/application.dart';
import 'src/app/app_initializer.dart';

void main() async {
  await initializeApp();
  runApp(const Application());
}