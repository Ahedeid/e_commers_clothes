import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class AcceptCheck extends StatefulWidget {
  const AcceptCheck({Key? key}) : super(key: key);

  @override
  State<AcceptCheck> createState() => _AcceptCheckState();
}

class _AcceptCheckState extends State<AcceptCheck> {
  bool isSelected = false ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Checkbox(
            activeColor: const Color(primeColorInApp),
            value: isSelected,
            onChanged: (val){
              setState(() {
                isSelected = val!;
              });
            }),
        const Text('I accept all the ',style: TextStyle(color: Color(secandTxtColor)),),
        const Text('Terms & Conditions',style:TextStyle(fontSize: smallSize,fontWeight: FontWeight.bold),),
      ],
    );
  }
}