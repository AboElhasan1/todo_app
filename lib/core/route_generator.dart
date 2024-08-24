import 'package:flutter/material.dart';
import 'package:todo_app1/home.dart';
import 'package:todo_app1/module/login/login.dart';
import 'package:todo_app1/module/regestration/registeration.dart';
import 'package:todo_app1/module/settings/settings.dart';

class Routes {
  static const String LoginScreen = "login";
  static const String SignupScreen = "register";
  static const String settings = "Settings";
  static const String tasks = "tasks";
  static const String HomeScreen = "home";
}

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.LoginScreen:
        return MaterialPageRoute(
            builder: (context) => const LoginView(), settings: settings);
      case Routes.SignupScreen:
        return MaterialPageRoute(
            builder: (context) => const RegisterScreen(), settings: settings);
      case Routes.HomeScreen:
        return MaterialPageRoute(
            builder: (context) => const Home(), settings: settings);
      case Routes.settings:
        return MaterialPageRoute(
            builder: (context) => const settingsview(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (context) => const LoginView(), settings: settings);
    }
  }
}
