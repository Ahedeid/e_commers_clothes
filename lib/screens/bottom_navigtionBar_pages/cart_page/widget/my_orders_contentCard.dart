import 'package:flutter/material.dart';

import '../../../../util/constant.dart';


class MyOrdersContentCard extends StatelessWidget {
  MyOrdersContentCard({
    Key? key,
    required this.mycart_images,required this.index
  }) : super(key: key);
  int index ;
  final List mycart_images;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 84,
          height: 73,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromRGBO(135, 199, 185, 0.1),
          ),
          child: Image.asset(mycart_images[index]),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'Henley Shirts',
              style: TextStyle(
                  color: Color(secandTxtColor),
                  fontSize: 15),
            ),
            Text(
              '\$250',
              style: TextStyle(
                  color: Color(primeTxtColor),
                  fontWeight: FontWeight.bold,
                  fontSize: medSize),
            ),
          ],
        ),
        const Text('20 Jan’2021',style: TextStyle(color: Color(secandTxtColor)),),
      ],
    );
  }
}
