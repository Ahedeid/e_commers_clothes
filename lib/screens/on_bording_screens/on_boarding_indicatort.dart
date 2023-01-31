import 'package:flutter/material.dart';

class OnBoardingIndicatort extends StatelessWidget {
  final bool selected;
final bool visable ;
  const OnBoardingIndicatort(
      {super.key, required this.selected,required this.visable});

  @override
  Widget build(BuildContext context) {
    return  Visibility(
      visible: visable,
      child: Icon(
        Icons.arrow_forward_ios,
        color: selected? Colors.white : const Color.fromRGBO(255, 255, 255, 0.5),
        size: 19,

      ),
    );
  }
}
