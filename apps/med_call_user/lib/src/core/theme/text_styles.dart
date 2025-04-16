import 'package:flutter/material.dart';

/// Стили текста
class AppTextStyles {
  static const heading = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static const body = TextStyle(fontSize: 16);
  static const caption = TextStyle(fontSize: 12, color: Colors.grey);

  static const textTheme = TextTheme(
    titleLarge: heading,
    bodyMedium: body,
    bodySmall: caption,
  );
}