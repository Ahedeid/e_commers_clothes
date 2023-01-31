import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/constant.dart';

class CusTxtFiled extends StatelessWidget {
  String hint ;
  String Picon;
  CusTxtFiled(this.Picon,{Key? key,
    required this.hint,
    required this.inputData
  }) : super(key: key);

  TextEditingController inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:335,
      height: 57,
      child: TextField(
        controller: inputData,
        decoration:  InputDecoration(
          prefixIconConstraints: const BoxConstraints.tightFor(width:45,height: 45),
          hintText: hint,
          alignLabelWithHint: true,
          filled: true,
          fillColor: Colors.white,
          hintStyle: const TextStyle(fontSize: smallSize),
          prefix: const Text('   '),
          prefixIcon: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(246, 121, 82, 0.1),
              borderRadius:BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(Picon,fit: BoxFit.scaleDown,),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
