import 'package:flutter/material.dart';
import 'package:hello_world/app_theme_controller.dart';

import 'app_widget.dart';

main() {
  runApp(AppWidget(
      title: 'My First Flutter App', appThemeController: AppThemeController()));
}
