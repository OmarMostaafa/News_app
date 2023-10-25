import 'package:flutter/material.dart';
class appTheme {
  static Color primaryLight = Color(0xFF39A552);
  static Color darkColor = Color(0xFF000000);
  static Color whiteColor = Color(0xffF8F8F8);
  static Color blueColor = Color(0xff4882CF);
  static Color RedColor = Color(0xffC91C22);
  static Color PinkColor = Color(0xffED1E79);
  static Color brownColor = Color(0xffCF7E48);
  static Color yellowColor = Color(0xffF2D352);

  ThemeData lightTheme = ThemeData(
      primaryColor: primaryLight,
    appBarTheme: AppBarTheme (
        color: primaryLight
    ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 22 , fontWeight: FontWeight.w500
        )
      )
  );
}

