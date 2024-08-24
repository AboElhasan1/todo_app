import 'package:flutter/material.dart';
import 'package:todo_app1/styles/text_style.dart';

import 'app_colors.dart';

ThemeData lightThemen = ThemeData(
  brightness: Brightness.light,
  iconTheme: const IconThemeData(
    size: 30,
    color: AppColors.lightBlueColor,
  ),
  scaffoldBackgroundColor: AppColors.whiteColor,
  primaryColor: AppColors.lightBlueColor,
  appBarTheme:  AppBarTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
    ),
    toolbarHeight: 60,
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 30,
    ),
    color: AppColors.lightBlueColor,
    centerTitle: true,
  ),
  textTheme: TextTheme(
    bodySmall: novaSquare12BlackLight(),
    bodyMedium: novaSquare18WhiteLight(),
    bodyLarge: novaSquare22WhiteLight(),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: Colors.transparent,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: AppColors.lightBlueColor,
    unselectedItemColor: Colors.grey.shade500,
  ),
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  iconTheme: const IconThemeData(
    size: 30,
    color: Colors.white,
  ),
  scaffoldBackgroundColor: AppColors.darkColor,
  primaryColorDark: AppColors.lightBlueColor,
  appBarTheme:  AppBarTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
    ),
    toolbarHeight: 60,
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 30,
    ),
    color: AppColors.lightBlueColor,
    centerTitle: true,
  ),
  textTheme: TextTheme(
    bodySmall: novaSquare12WhiteDark(),
    bodyMedium: novaSquare18WhiteDark(),
    bodyLarge: novaSquare22WhiteDark(),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 0,
    backgroundColor: Colors.transparent,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: AppColors.lightBlueColor,
    unselectedItemColor: Colors.white,
  ),
);
