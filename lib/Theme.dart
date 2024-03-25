import 'package:flutter/material.dart';

class apptheme {
  static Color primarycolor = Color(0xffF86676);
  static Color secondarycolor = Color(0xffFFFFFFF);
  static Color backgroundcolorlight = Color(0xffF9F9F9);
  static Color backgroundcolordark = Color(0xff201C1D);
  static Color backgroundcolor2dark = Color(0xff4D4948);
  static Color unselectedcolor = Color(0xffA6A5A5);

  static ThemeData lighttheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: secondarycolor,
    ),
  );

  static ThemeData darktheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: backgroundcolor2dark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(primarycolor),
      ),
    ),
  );
}
