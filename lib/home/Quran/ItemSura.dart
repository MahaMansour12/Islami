import 'package:flutter/material.dart';

import '../../My Them.dart';

class Item_Sura extends StatelessWidget {
  String item;
  int numberOfItem;

  Item_Sura({required this.item, required this.numberOfItem});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$item (${numberOfItem + 1})',
      style: const TextStyle(color: MyThem.whiteColor, fontSize: 20),
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
