import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';

class MyCartSubTotal extends StatelessWidget {
  const MyCartSubTotal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Subtotal   :',
          style: TextStyle(color: Color(primeTxtColor), fontSize: smallSize),
        ),
        Text(
          '\$740',
          style: TextStyle(
              color: Color(primeTxtColor),
              fontSize: medSize,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
