import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../My Them.dart';

class Sura_Name_Details extends StatelessWidget {
  static const String routName = 'Sura_Details';

  const Sura_Name_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraNameDetailsArgument;
    loadFils(args.index);
    return Stack(children: [
      Image.asset(
        'asstes/imges/background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
          appBar: AppBar(
            title: Text("${args.name}", style: TextStyle(color: Colors.white)),
          ),
          body: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyThem.ColorThem),
            margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          )),
    ]);
  }

  void loadFils(int index) async {
    String files = await rootBundle.loadString('asstes/Sura/${index + 1}.txt');
  }
}

class SuraNameDetailsArgument {
  String name;
  int index;

  SuraNameDetailsArgument({required this.index, required this.name});
}
