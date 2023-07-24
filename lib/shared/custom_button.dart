import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    required this.title,
    required this.onPressed,
    super.key,
    this.isBorder = false,
    this.backGroundColor = const Color(0xFFF67952),
    this.textColor = Colors.white,
    this.isLoading = false,
    this.fontSize = 20,
    this.width = double.infinity,
    this.borderColor = Colors.black,
    this.borderRadius = 8,
    this.vertical = 11,
    this.fontWeight,
    this.isLogin = false,
  });

  final void Function() onPressed;
  final bool isBorder;
  final String title;
  final Color backGroundColor;
  final Color textColor;
  final bool isLoading;
  final double fontSize;
  final double width;
  final Color borderColor;
  final double borderRadius;
  final double vertical;
  final FontWeight? fontWeight;
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? () {} : onPressed,
      style: isLogin
          ? ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(primeColorInApp)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )),
              fixedSize: MaterialStateProperty.all(
                Size(width, hHeight),
              ),
            )
          : ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: vertical),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              side: isBorder == false
                  ? BorderSide.none
                  : BorderSide(color: borderColor, width: 1),
              backgroundColor: backGroundColor,
              elevation: 1,
            ),
      child: isLoading == true
          ? const Center(
              child: SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(color: Colors.white)),
            )
          : Text(
              title,
              style: TextStyle(
                  fontSize: fontSize, color: textColor, fontWeight: fontWeight),
            ),
    );
  }
}
