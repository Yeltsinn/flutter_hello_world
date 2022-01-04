import 'package:flutter/material.dart';
import 'package:hello_world/app_theme_controller.dart';
import 'package:hello_world/custom_switch.dart';

class HomePage extends StatefulWidget {
  final String navigationTitle;
  final AppThemeController appThemeController;

  const HomePage(
      {Key? key,
      required this.navigationTitle,
      required this.appThemeController})
      : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState(navigationTitle, appThemeController);
  }
}

class HomePageState extends State<HomePage> {
  final String navigationTitle;
  int counter = 0;
  final AppThemeController appThemeController;

  HomePageState(this.navigationTitle, this.appThemeController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
      body: Column(
        children: [
          Text('Contador $counter'),
          CustomSwitch(appThemeController: appThemeController)
        ],
      ),
    );
  }
}
