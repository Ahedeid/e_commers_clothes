import 'package:flutter/material.dart';

import '../../../../../../../../../util/constant.dart';

class PaymentTxtPrime extends StatelessWidget {
  const PaymentTxtPrime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Congratulation!!!',
      style: TextStyle(
          color: Color(primeTxtColor),
          fontSize: bigSize,
          fontWeight: FontWeight.bold),
    );
  }
}
