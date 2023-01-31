import 'package:flutter/material.dart';

import '../../../../util/constant.dart';


class SheetTitleRange extends StatelessWidget {
  String txtA;

  String txtB;

  SheetTitleRange({super.key, required this.txtA, required this.txtB});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txtA,
          style:
          const TextStyle(fontSize: bigSize, fontWeight: FontWeight.bold),
        ),
        Text(
          txtB,
          style:
          const TextStyle(fontSize: medSize, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
