import 'package:flutter/material.dart';

import '../../../../../../../../util/constant.dart';

class CheckoutButton extends StatelessWidget {
  String txt;

  String nav;

  Color color;

  CheckoutButton(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 37,
                width: 37,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
                child: const Icon(Icons.arrow_forward_rounded,color: Color(primeColorInApp),)),
            Text(
              txt,
              style:  TextStyle(
                fontSize: medSize,
                color: txt == 'Back to Home' ? const Color(primeColorInApp):Colors.white,
              ),
            ),
          ],
        ));
  }
}
