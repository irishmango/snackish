import 'package:flutter/material.dart';


class AppColors {
  static Color primaryColor = Colors.white;
}

ThemeData primaryTheme = ThemeData(

  // Scaffold Color


  // TextTheme
  fontFamily: 'SFProText', 
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 16),
    bodyMedium: TextStyle(fontSize: 14),
    titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
  ),
);