import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../../util/constant.dart';
import '../../../../../../../../../util/constat_assets.dart';


class PaymentCircleLine extends StatelessWidget {
  const PaymentCircleLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 208,
      width: 208,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 15, color: const Color(primeColorInApp))),
      child: SvgPicture.asset(
        check,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
