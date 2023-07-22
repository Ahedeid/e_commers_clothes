import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class LoginCustButton extends StatelessWidget {
  String txt ;
  String Nav ;
  Future setData ;
  TextEditingController inputData = TextEditingController();

  LoginCustButton({Key? key,
    required this.inputData,
    required this.txt,required this.Nav,required this.setData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(const Color(primeColorInApp)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
            fixedSize: MaterialStateProperty.all(const Size(wWieth, hHeight))),
        onPressed: () async{
           await setData;
         if(inputData.text.isEmpty) {
            print('aaaaaaaaaaaaa');
           } else{
             Nav == 'home_screen'
                 ? Navigator.pushReplacementNamed(context, Nav)
                 : Navigator.pushNamed(context, Nav);
           }
         print(inputData.text);
           },
        child:  Text(
          txt,
          style: const TextStyle(color: Colors.white, fontSize: medSize),
        ));
  }
}
