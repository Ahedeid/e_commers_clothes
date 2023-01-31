import 'package:flutter/material.dart';

import '../../../../../../../../util/constant.dart';


class CheckOutDelivertFree extends StatelessWidget {
  String txt;

  String prise;

  CheckOutDelivertFree({super.key, required this.txt, required this.prise});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt,
          style: const TextStyle(fontSize: smallSize, color: Color(secandTxtColor)),
        ),
        Text(
          prise,
          style: const TextStyle(fontSize: medSize, color: Color(primeTxtColor)),
        ),
      ],
    );
  }
}
