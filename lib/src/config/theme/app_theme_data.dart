import 'package:challenge_cardozo/src/app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'colors.dart';

/// A class that defines the light theme for the application.
/// It includes app bar themes, icon themes, scaffold background colors,
/// card themes, dropdown menu themes, input decoration themes,
/// primary colors, color schemes, and text themes.
final ThemeData lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.blueBg,
    foregroundColor: AppColor.white,
  ),
  iconTheme: IconThemeData(color: AppColor.white),
  scaffoldBackgroundColor: AppColor.greyBg,
  cardTheme: CardTheme(
    color: AppColor.borderColor,
    shadowColor: Colors.black.withAlpha(100),
    elevation: 16,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
  dropdownMenuTheme: dropdownMenuThemeData(
    textColor: AppColor.black,
    backgroundColor: AppColor.white,
    borderColor: AppColor.borderColor,
  ),
  inputDecorationTheme: inputDecorationTheme(
    textColor: AppColor.black,
    backgroundColor: AppColor.white,
    borderColor: AppColor.borderColor,
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: AppColor.blueBg,
    contentTextStyle: TextStyle(color: AppColor.white),
  ),
  primaryColor: AppColor.white,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: AppColor.white,
    onPrimary: AppColor.black,
    secondary: AppColor.black,
    onSecondary: AppColor.white,
    tertiary: AppColor.greyBg,
    onTertiary: AppColor.black,
    error: AppColor.red,
    onError: AppColor.white,
    surface: AppColor.blueBg,
    onSurface: AppColor.white,
  ),
  textTheme: textTheme(AppColor.black),
);

/// A class that defines the dark theme for the application.
/// It includes app bar themes, icon themes, scaffold background colors,
/// card themes, dropdown menu themes, input decoration themes,
/// primary colors, color schemes, and text themes.
final ThemeData darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.black,
    foregroundColor: AppColor.white,
  ),
  iconTheme: IconThemeData(color: AppColor.white),
  scaffoldBackgroundColor: AppColor.darkBg,
  cardTheme: CardTheme(
    color: AppColor.black,
    shadowColor: Colors.black.withAlpha(100),
    elevation: 16,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
  dropdownMenuTheme: dropdownMenuThemeData(
    textColor: AppColor.white,
    backgroundColor: AppColor.black,
    borderColor: AppColor.borderTransparent,
  ),
  inputDecorationTheme: inputDecorationTheme(
    textColor: AppColor.white,
    backgroundColor: AppColor.black,
    borderColor: AppColor.borderTransparent,
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: AppColor.black,
    contentTextStyle: TextStyle(color: AppColor.white),
  ),
  primaryColor: AppColor.black,
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: AppColor.black,
    onPrimary: AppColor.white,
    secondary: AppColor.white,
    onSecondary: AppColor.black,
    tertiary: AppColor.greyBg,
    onTertiary: AppColor.black,
    error: AppColor.red,
    onError: AppColor.white,
    surface: AppColor.black,
    onSurface: AppColor.greyBg,
  ),
  textTheme: textTheme(AppColor.white),
);

/// Returns a [TextTheme] with the specified text color. Used on both themes.
TextTheme textTheme(Color textColor) => TextTheme(
  displayLarge: GoogleFonts.getFont(
    'Outfit',
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: textColor,
  ),
  displayMedium: GoogleFonts.getFont(
    'Outfit',
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: textColor,
  ),
  displaySmall: GoogleFonts.getFont(
    'Outfit',
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColor.black,
  ),
  titleLarge: GoogleFonts.getFont(
    'Outfit',
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: textColor,
  ),
  titleMedium: GoogleFonts.getFont(
    'Outfit',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: textColor,
  ),
  titleSmall: GoogleFonts.getFont(
    'Outfit',
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: textColor,
  ),
  bodyLarge: GoogleFonts.getFont('Outfit', fontSize: 16, color: textColor),
  bodyMedium: GoogleFonts.getFont('Outfit', fontSize: 14, color: textColor),
  bodySmall: GoogleFonts.getFont('Outfit', fontSize: 12, color: textColor),
);

/// Returns an [InputDecorationTheme] with the specified text color,
/// background color, and border color.
InputDecorationTheme inputDecorationTheme({
  required Color textColor,
  required Color backgroundColor,
  required Color borderColor,
}) => InputDecorationTheme(
  filled: true,
  fillColor: backgroundColor,
  focusColor: backgroundColor,
  hintStyle: TextStyle(color: textColor),
  labelStyle: TextStyle(color: textColor),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: borderColor),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: borderColor),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: borderColor),
  ),
);

/// Returns a [DropdownMenuThemeData] with the specified text color,
/// background color, and border color.
DropdownMenuThemeData dropdownMenuThemeData({
  required Color textColor,
  required Color backgroundColor,
  required Color borderColor,
}) => DropdownMenuThemeData(
  textStyle: TextStyle(color: textColor),
  menuStyle: MenuStyle(
    backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  inputDecorationTheme: inputDecorationTheme(
    backgroundColor: backgroundColor,
    textColor: textColor,
    borderColor: borderColor,
  ),
);
