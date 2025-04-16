import 'package:flutter/material.dart';
import 'package:med_call_user/src/core/theme/text_styles.dart';

import 'colors.dart';

/// Главная тема приложения
final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
  textTheme: AppTextStyles.textTheme,
  scaffoldBackgroundColor: Colors.white,
);