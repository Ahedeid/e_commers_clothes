import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/constant.dart';
import '../../../util/constat_assets.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 54,
              width: 52,
              child: SvgPicture.asset(logo),),
          const SizedBox(height: 15),
          const Text('Log in',style:
          TextStyle(fontSize: bigSize,fontWeight: FontWeight.bold),),
          const SizedBox(
            width:335,
            height: 57,
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'ahedeid@hotmail.com',
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: TextStyle(fontSize: smallSize),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10),
                    ),
                  )
              ),
            ),
          )

        ],
      ),
    );
  }
}
