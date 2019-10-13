import 'package:flutter/material.dart';


ThemeData myappTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.cyan,
    accentColor: Colors.pink,

    textTheme: TextTheme(
      headline: TextStyle(color: Colors.white),
      body1: TextStyle(color: Colors.black12),

    ),

    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),

    )
  );
}