import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String txt;

  final String nav;

  final Color color;

  const CustomButton(
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
        style: TextStyle(
          fontSize: smallSize,
          fontWeight: FontWeight.w500,
          color: txt == 'Back to Home'
              ? const Color(primeColorInApp)
              : Colors.white,
        ),
      ),
    );
  }
}
