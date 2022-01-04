import 'package:flutter/material.dart';
import 'package:hello_world/app_theme_controller.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;
  final AppThemeController appThemeController;
  const AppWidget(
      {Key? key, required this.title, required this.appThemeController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: appThemeController,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: appThemeController.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: HomePage(
                navigationTitle: title,
                appThemeController: appThemeController));
      },
    );
  }
}
