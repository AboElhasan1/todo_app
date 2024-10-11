import 'package:flutter/material.dart';
import 'package:todo_app1/MyApp.dart';
import 'package:todo_app1/home.dart';
import 'package:todo_app1/core/page_route_name.dart';
import 'package:todo_app1/module/login/login.dart';
import 'package:todo_app1/module/regestration/registeration.dart';
import 'package:todo_app1/module/settings/settings.dart';

class RouteGenerator {
 static Route<dynamic>onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteName.login:
        return MaterialPageRoute(
            builder: (context) => LoginView(), settings: settings);
      case PageRouteName.register:
        return MaterialPageRoute(
            builder: (context) => registeration(), settings: settings);
      case PageRouteName.home:
        return MaterialPageRoute(
            builder: (context) => home(), settings: settings);
      case PageRouteName.Settings:
        return MaterialPageRoute(
            builder: (context) => settingsview(), settings: settings);
        default: return MaterialPageRoute(
            builder: (context) => LoginView(), settings: settings);

    }
  }
}
