import 'package:flutter/material.dart';

class DefaultTheme {
  static String appName = "FurnitureApp";

//Colorsfortheme
  static Color primaryBlue = Color(0xFF347AF0);
  static Color green = Color(0xFF75BF72);
  static Color red = Color(0xFFDF5060);
  static Color yellow = Color(0xFFFDB32A);
  static Color midnightBlue = Color(0xff0D1F3C);
  static Color white = Color(0xFFFFFFFF);
  static Color darkGray = Color(0xFF78839C);
  static Color gray = Color(0xFFB5BBC9);
  static Color lightGray = Color(0xFFCFD2D8);
  static Color black = Color(0xFF000000);
  static Color onboardingBg = Color(0xffEDF1F9);

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Titillium',
    primaryColor: primaryBlue,
    colorScheme: ColorScheme(
      primary: primaryBlue,
      primaryVariant: midnightBlue,
      secondary: gray,
      secondaryVariant: darkGray,
      surface: lightGray,
      background: onboardingBg,
      error: red,
      onPrimary: black,
      onSecondary: black,
      onSurface: black,
      onBackground: black,
      onError: black,
      brightness: Brightness.light,
    ),
    appBarTheme: AppBarTheme(
      color: primaryBlue
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryBlue,
    )
  );

  static ThemeData darkTheme = ThemeData();
}
