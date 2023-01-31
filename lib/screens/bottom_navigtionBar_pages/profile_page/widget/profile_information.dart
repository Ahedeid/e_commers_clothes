import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class ProfileInformation extends StatelessWidget {
  ProfileInformation({
    required this.txt,required this.Information
  });
  String txt ;
  String Information ;


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
          Information ,
          style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Color(primeTxtColor)),
        ),
      ],
    );
  }
}
