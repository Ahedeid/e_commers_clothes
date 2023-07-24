import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';

class MyOrdersContentCard extends StatelessWidget {
  const MyOrdersContentCard(
      {Key? key, required this.myCartImages, required this.index})
      : super(key: key);
  final int index;

  final List myCartImages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 84,
                height: 73,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(135, 199, 185, 0.1),
                ),
                child: Image.asset(myCartImages[index]),
              ),
              const SizedBox(width: 19),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Henley Shirts',
                    style:
                        TextStyle(color: Color(secandTxtColor), fontSize: 15),
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
            ],
          ),
          const Text(
            '20 Jan’2021',
            style: TextStyle(color: Color(secandTxtColor)),
          ),
        ],
      ),
    );
  }
}
