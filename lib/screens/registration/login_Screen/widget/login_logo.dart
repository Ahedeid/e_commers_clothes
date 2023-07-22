import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../util/constat_assets.dart';

class LogoInLogin extends StatelessWidget {
  const LogoInLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: SvgPicture.asset(logo),
    );
  }
}
