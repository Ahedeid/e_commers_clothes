import 'package:flutter/material.dart';

import '../../../../util/constant.dart';


class TxtLogin extends StatelessWidget {
  const TxtLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Log in',
      style: TextStyle(fontSize: bigSize, fontWeight: FontWeight.bold),
    );
  }
}
