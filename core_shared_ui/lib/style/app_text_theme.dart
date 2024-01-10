import 'package:flutter/material.dart';

class AppTextTheme {
  static const String appFontFamily = "Roboto";
  static TextTheme get textTheme => textThemeRoboto;
  static TextTheme textThemeRoboto = const TextTheme(
    displayLarge: TextStyle(
        fontFamily: appFontFamily,
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5),
    displayMedium: TextStyle(
        fontFamily: appFontFamily,
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5),
    displaySmall: TextStyle(
        fontFamily: appFontFamily, fontSize: 48, fontWeight: FontWeight.w400),
    headlineMedium: TextStyle(
        fontFamily: appFontFamily,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25),
    headlineSmall: TextStyle(
        fontFamily: appFontFamily, fontSize: 24, fontWeight: FontWeight.w400),
    titleLarge: TextStyle(
        fontFamily: appFontFamily,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15),
    titleMedium: TextStyle(
        fontFamily: appFontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15),
    titleSmall: TextStyle(
        fontFamily: appFontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1),
    bodyLarge: TextStyle(
        fontFamily: appFontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5),
    bodyMedium: TextStyle(
        fontFamily: appFontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25),
    labelLarge: TextStyle(
        fontFamily: appFontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25),
    bodySmall: TextStyle(
        fontFamily: appFontFamily,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4),
    labelSmall: TextStyle(
        fontFamily: appFontFamily,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5),
  );
}
