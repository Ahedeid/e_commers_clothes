import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CheckOutPayMethode extends StatelessWidget {
  String image ;
  CheckOutPayMethode({super.key,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: SvgPicture.asset(image,fit: BoxFit.scaleDown,),
    );
  }
}
