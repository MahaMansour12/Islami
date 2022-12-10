import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../My Them.dart';
import 'ItemSura.dart';

class Sura_Name_Details extends StatefulWidget {
  static const String routName = 'Sura_Details';

  @override
  State<Sura_Name_Details> createState() => _Sura_Name_DetailsState();
}

class _Sura_Name_DetailsState extends State<Sura_Name_Details> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraNameDetailsArgument;
    if (verses.isEmpty) {
      loadFils(args.index);
    }
    return Stack(children: [
      Image.asset(
        'asstes/imges/background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
          appBar: AppBar(
            title: Text("${args.name}",
                style: const TextStyle(color: Colors.white, fontSize: 30)),
          ),
          body: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: MyThem.ColorThem),
            margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: verses.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Item_Sura(
                          item: verses[index],
                          numberOfItem: index,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                          height: 0.1, color: MyThem.mainColor);
                    },
                    itemCount: verses.length,
                  ),
          )),
    ]);
  }

  void loadFils(int index) async {
    String files = await rootBundle.loadString('asstes/Sura/${index + 1}.txt');
    List<String> lines = files.trim().split("\n");
    verses = lines;
    setState(() {});
  }
}

class SuraNameDetailsArgument {
  String name;
  int index;

  SuraNameDetailsArgument({required this.index, required this.name});
}
