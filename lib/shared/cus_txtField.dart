import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTxtFiled extends StatelessWidget {
  const CustomTxtFiled(this.icon,
      {Key? key, required this.hint, this.inputData})
      : super(key: key);

  final String hint;

  final String icon;
  final TextEditingController? inputData;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: inputData,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.all(5),
        // prefixIconConstraints: const BoxConstraints.tightFor(width:45,height: 45),
        hintText: hint,
        alignLabelWithHint: true,
        filled: true,
        fillColor: Colors.white,
        hintStyle: const TextStyle(fontSize: smallSize),
        prefix: const Text('  '),
        prefixIcon: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(246, 121, 82, 0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            icon,
            fit: BoxFit.scaleDown,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
