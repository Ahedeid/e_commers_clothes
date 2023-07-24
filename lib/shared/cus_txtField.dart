import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTxtFiled extends StatelessWidget {
  const CustomTxtFiled(
    this.icon, {
    Key? key,
    this.inputData,
    required this.hintText,
    this.obscureText = false,
    required this.keyboardType,
    this.bottomMargin = 0,
    this.prefixIcon,
    this.suffix,
    this.suffixIcon,
    this.onChange,
    //this.onSaved,
    this.width = double.infinity,
    this.validator,
    this.controller,
    //this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.maxLines = 1,
    this.minLines = 1,
    this.readOnly = false,
    this.textInputAction,
    this.backGroundColor = Colors.white,
  }) : super(key: key);

  final String icon;
  final TextEditingController? inputData;
  final int maxLines;
  final int minLines;
  final String hintText;
  final bool obscureText;
  final double bottomMargin;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Function? onChange;
  final TextEditingController? controller;

  //AutovalidateMode? autovalidateMode;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final double width;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Color? backGroundColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      readOnly: readOnly,
      //enableInteractiveSelection: true,
      maxLines: maxLines,
      minLines: minLines,
      style: const TextStyle(color: Colors.black, fontSize: 14),
      onChanged: onChange as Function(String?)?,
      //   onSaved: onSaved as Function(String?)?,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.disabled,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffix: suffix,
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
        hintText: hintText,
        // errorStyle: const TextStyle(fontSize: 12, height: 0.9),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
        filled: true,
        fillColor: backGroundColor,

        // isDense: true,
        // contentPadding:  const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFF67952)),
        ),
      ),
      //autofocus: true ,
    );
  }
}

/*
 TextField(
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
 */
