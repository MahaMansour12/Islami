import 'package:flutter/material.dart';

import '../../My Them.dart';
import 'SuraDetails.dart';

class Sura_Name extends StatelessWidget {
  String SuraName;
  int index;

  Sura_Name({required this.SuraName, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Sura_Name_Details.routName,
            arguments: SuraNameDetailsArgument(index: index, name: SuraName));
      },
      child: Text(SuraName,
          textAlign: TextAlign.center,
          style: TextStyle(color: MyThem.whiteColor, fontSize: 20)),
    );
  }
}
