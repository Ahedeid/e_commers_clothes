import 'package:flutter/material.dart';

import '../../../../../../../../../util/constant.dart';

class PaymentTXTSecand extends StatelessWidget {
  const PaymentTXTSecand({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''              Payment is the transfer of money 
        services in exchange product or Payments''',
      style: TextStyle(
        color: Color(secandTxtColor),
      ),
    );
  }
}
