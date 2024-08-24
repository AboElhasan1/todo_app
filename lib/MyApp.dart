import 'package:flutter/material.dart';
import 'package:todo_app1/core/application_theme_manager.dart';
import 'package:todo_app1/core/route_generator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ApplicationThemeManager.lightTheme,
        initialRoute: Routes.LoginScreen,
        onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
