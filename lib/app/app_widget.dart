import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterarchiteture/app/app_controller.dart';
import 'package:flutterarchiteture/app/pages/home/home.page.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, isDark, child) {
        return MaterialApp(
          title: "Flutter Architeture",
          theme: ThemeData(
              primarySwatch: Colors.blue,
              brightness: isDark ? Brightness.dark : Brightness.light,
              visualDensity: VisualDensity.adaptivePlatformDensity),home: HomePage(),
        );
      },
    );
  }
}
