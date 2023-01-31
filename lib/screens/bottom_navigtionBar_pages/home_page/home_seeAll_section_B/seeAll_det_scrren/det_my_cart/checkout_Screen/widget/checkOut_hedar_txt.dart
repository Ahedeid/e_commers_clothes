import 'package:flutter/material.dart';

import '../../../../../../../../util/constant.dart';



class CheckOutHedarTxt extends StatelessWidget {
  String txt;

  CheckOutHedarTxt({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: medSize),
        ),
        Text('')
      ],
    );
  }
}
