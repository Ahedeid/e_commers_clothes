import 'package:flutter/material.dart';

import '../../../../util/constant.dart';


class TxtSignUp extends StatelessWidget {
  const TxtSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign Up',
      style: TextStyle(fontSize: bigSize, fontWeight: FontWeight.bold),
    );
  }
}
