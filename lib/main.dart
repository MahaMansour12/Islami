import 'package:flutter/material.dart';
import 'package:islamy/home_screen.dart';

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
      },
    );
  }
}
