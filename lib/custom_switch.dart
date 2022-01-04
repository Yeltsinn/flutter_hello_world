import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/app_theme_controller.dart';

class CustomSwitch extends StatelessWidget {
  final AppThemeController appThemeController;

  const CustomSwitch({Key? key, required this.appThemeController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: appThemeController.isDarkTheme,
      onChanged: (value) {
        appThemeController.changeTheme();
      },
    );
  }
}
