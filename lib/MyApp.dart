import 'package:flutter/material.dart';
import 'package:todo_app1/App%20colors.dart';
import 'package:todo_app1/core/Application_theme_manager.dart';
import 'package:todo_app1/core/page_route_name.dart';
import 'package:todo_app1/core/route_generator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationThemeManager.lightTheme,
      initialRoute: PageRouteName.home,
      onGenerateRoute: RouteGenerator.onGenerateRoute,

    );
  }
}
