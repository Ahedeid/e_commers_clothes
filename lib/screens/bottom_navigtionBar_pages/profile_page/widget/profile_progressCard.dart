import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../util/constant.dart';

class progressCard extends StatelessWidget {
  progressCard({
    required this.txt,required this.number,required this.images,required this.lone
  });
  String txt ;
  String number ;
  String images ;
  Color lone ;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 120,
        width: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lone
                ),
                child: SvgPicture.asset(images,fit: BoxFit.scaleDown,),
              ),
              const SizedBox(height: 13),
              Text(txt,style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(secandTxtColor)
              ),),
              const SizedBox(height: 7),
              Text(number,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: smallSize),)
            ],
          ),
        ),
      ),
    );
  }
}
