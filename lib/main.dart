import 'package:flutter/material.dart';
import 'package:islamy/My%20Them.dart';
import 'package:islamy/home/Quran/SuraDetails.dart';
import 'package:islamy/home/home_screen.dart';

void main() {
  runApp(Islami());
}

class Islami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home_Screen.routNam,
      routes: {
        Home_Screen.routNam: (context) => Home_Screen(),
        Sura_Name_Details.routName: (context) => Sura_Name_Details(),
      },
      theme: MyThem.lightThem,
      darkTheme: MyThem.darktThem,
    );
  }
}
