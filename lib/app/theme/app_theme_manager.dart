import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typography.dart';

abstract class AppThemeManager {
  static ThemeData lightTheme = ThemeData.light().copyWith(
      colorScheme: lightColorScheme,
      textTheme: AppTypography.textTheme);

  static ThemeData darkTheme = ThemeData.dark().copyWith(
      colorScheme: darkColorScheme,
      textTheme: AppTypography.textTheme);
}
