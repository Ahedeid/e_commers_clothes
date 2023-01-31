import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class LoginTxtForgot extends StatelessWidget {
  const LoginTxtForgot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(''),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Forgot password?',
              style: TextStyle(color: Color(primeTxtColor)),
            )),
      ],
    );
  }
}
