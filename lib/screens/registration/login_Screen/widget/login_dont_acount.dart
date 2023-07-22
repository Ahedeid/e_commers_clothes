import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class LoginDontHaveAccount extends StatelessWidget {
  String SacTxt;
  String TxtButton ;
  String Nav ;
   LoginDontHaveAccount({Key? key,
    required this.SacTxt , required this.TxtButton,required this.Nav
  }) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
      SacTxt,
          style: const TextStyle(color: Color(secandTxtColor)),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Nav);
            },
            child:  Text(
              TxtButton,
              style: const TextStyle(
                  color: Color(primeTxtColor),
                  fontSize: smallSize,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
