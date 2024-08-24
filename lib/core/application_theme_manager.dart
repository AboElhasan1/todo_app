import 'package:flutter/material.dart';
import '../App colors.dart';

class ApplicationThemeManager {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    iconTheme: const IconThemeData(
      size: 30,
      color: AppColors.lightBlueColor,
    ),
    scaffoldBackgroundColor: AppColors.whiteColor,
    primaryColor: AppColors.lightBlueColor,
    appBarTheme: AppBarTheme(
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
    appBarTheme: AppBarTheme(
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
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.lightBlueColor,
      unselectedItemColor: Colors.white,
    ),
  );
}
