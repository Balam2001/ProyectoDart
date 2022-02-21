import 'package:flutter/material.dart';

class AppTheme{
  static const String _hexCode = '0xFF2F8B99';
  static final Color primaryColor = Color(int.parse(_hexCode));
  static const double globalElevation = 0;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Color(int.parse(_hexCode)),
    appBarTheme:  AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: false,
      elevation: globalElevation));
    

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Color(int.parse(_hexCode)),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: false,
      elevation: globalElevation));
}