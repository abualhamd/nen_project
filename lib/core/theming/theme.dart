import 'package:flutter/material.dart';

ThemeData getThemeData(BuildContext context) {
  return Theme.of(context).copyWith(
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.blue,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Colors.blue, width: 1.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    ),
  );
}
