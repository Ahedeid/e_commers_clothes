import 'package:flutter/material.dart';

import '../../../../../../../util/constant.dart';

class MyCartSubTotal extends StatelessWidget {
  const MyCartSubTotal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Subtotal   :',style: TextStyle(color: Color(primeTxtColor),fontSize: smallSize),),
        Text('\$740',style: TextStyle(color: Color(primeTxtColor),fontSize: medSize,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
