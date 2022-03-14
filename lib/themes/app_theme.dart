import 'package:flutter/material.dart';

class AppTheme{
  static  Color primaryColor = const Color(0xFF2F8B99);
  static Color secundaryColor = const Color(0xFF1C5159);
  static const double globalElevation = 0;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: const Color(0xFF2F8B99),
    appBarTheme:  AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: false,
      elevation: globalElevation),
      inputDecorationTheme: InputDecorationTheme(
        iconColor: primaryColor,
        prefixIconColor: primaryColor,
        labelStyle: TextStyle(color: primaryColor),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
        )
        
      ));
    

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: const Color(0xFF2F8B99),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: false,
      elevation: globalElevation),
      inputDecorationTheme: InputDecorationTheme(
        iconColor: primaryColor,
        prefixIconColor: primaryColor,
        labelStyle: TextStyle(color: primaryColor),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
        )
        
      ));
}