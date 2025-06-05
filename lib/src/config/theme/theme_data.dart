import 'package:flutter/material.dart';

final Color color1 = Color(0xFF361ae6);
final Color color2 = Color(0xFF684bec);
final Color color3 = Color(0xFF9b7df2);
final Color color4 = Color(0xFFcdaef9);
final Color color5 = Color(0xFFffe0ff);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: color1,
  colorScheme: ColorScheme.light(
    primary: color1,
    secondary: color2,
    surface: color5,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: color1,
    foregroundColor: Colors.white,
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: color1,
  colorScheme: ColorScheme.dark(
    primary: color1,
    secondary: color2,
    surface: color3,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: AppBarTheme(
    backgroundColor: color2,
    foregroundColor: Colors.white,
  ),
);
