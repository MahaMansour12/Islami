import 'package:flutter/material.dart';
import 'package:islamy/My%20Them.dart';
import 'package:islamy/home/Quran/quran.dart';
import 'package:islamy/home/radio.dart';
import 'package:islamy/home/sebha.dart';

import 'hadeth.dart';

class Home_Screen extends StatefulWidget {
  static const String routNam = 'Home_Screen';

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int currenyIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'asstes/imges/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(
                'Islami',
                style: TextStyle(color: MyThem.whiteColor),
              ),
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(canvasColor: MyThem.ColorThem),
              child: BottomNavigationBar(
                currentIndex: currenyIndex,
                onTap: (index) {
                  currenyIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('asstes/imges/qurain.png'),
                        size: 35,
                      ),
                      label: 'Quran'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('asstes/imges/book.png'),
                        size: 35,
                      ),
                      label: 'Hadeth'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage('asstes/imges/sebha.png'),
                          size: 35),
                      label: 'Sebha'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('asstes/imges/radio.png'),
                        size: 35,
                      ),
                      label: 'Radio'),
                ],
              ),
            ),
            body: taps[currenyIndex])
      ],
    );
  }

  List<Widget> taps = [
    Quran_Tap(),
    Hadeth_Tap(),
    Sebha_Tap(),
    Radio_Tap(),
  ];
}
