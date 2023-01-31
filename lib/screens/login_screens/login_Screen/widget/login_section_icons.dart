import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../util/constat_assets.dart';

class LoginSectionIcons extends StatelessWidget {
  const LoginSectionIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(50),
          child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: SvgPicture.asset(facebook,fit: BoxFit.scaleDown,)),
        ),
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(50),
          child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: SvgPicture.asset(google,fit: BoxFit.scaleDown,)),
        ),
      ],
    );
  }
}
