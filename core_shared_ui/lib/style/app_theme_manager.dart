import 'package:flutter/material.dart';
import 'app_color_theme.dart';
import 'app_text_theme.dart';

abstract class AppThemeManager {
  static ThemeData lightTheme = ThemeData.light().copyWith(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      textTheme: AppTextTheme.textTheme);

  static ThemeData darkTheme = ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: darkColorScheme,
      textTheme: AppTextTheme.textTheme);
}
