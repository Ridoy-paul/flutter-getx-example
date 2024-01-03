import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blueAccent,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blueAccent,
  )
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.deepOrange,

  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepOrange,
  )

);