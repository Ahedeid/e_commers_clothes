import 'package:flutter/material.dart';

import '../util/constant.dart';

class CustButton extends StatelessWidget {
  String txt;

  String nav;

  Color color;

  CustButton(
      {super.key, required this.txt, required this.color, required this.nav});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          fixedSize: const MaterialStatePropertyAll(Size(233, 55)),
          backgroundColor: MaterialStatePropertyAll(color),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
        ),
        onPressed: () {
       Navigator.pushNamed(context, nav);
        },
        child: Text(
          txt,
          style:  TextStyle(
            fontSize: medSize,
            color: txt == 'Back to Home' ? const Color(primeColorInApp):Colors.white,
          ),
        ));
  }
}
