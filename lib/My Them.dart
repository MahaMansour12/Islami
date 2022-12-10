import 'package:flutter/material.dart';

class MyThem {
  static ThemeData lightThem = ThemeData();
  static const Color whiteColor = Color(0xffF8F8F8);
  static const Color mainColor = Color(0xffFACC1D);
  static const Color ColorThem = Color(0xff141A2E);

  static ThemeData darktThem = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        textTheme: TextTheme(
            headline4: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 25,
          color: MyThem.whiteColor,
        )),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorThem,
        selectedItemColor: mainColor,
        unselectedItemColor: whiteColor,
        selectedLabelStyle: TextStyle(color: mainColor),
      ));
}
