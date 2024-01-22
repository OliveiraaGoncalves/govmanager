import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'theme/app_theme_manager.dart';
import 'constants/app_route.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(AppRoute.home);
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppThemeManager.lightTheme,
        darkTheme: AppThemeManager.darkTheme,
        routerDelegate: Modular.routerDelegate,
        routeInformationParser: Modular.routeInformationParser);
  }
}
