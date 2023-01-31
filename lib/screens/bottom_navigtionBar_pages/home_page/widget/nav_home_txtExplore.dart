
import 'package:flutter/material.dart';

import '../../../../util/constant.dart';



class TxtExplore extends StatelessWidget {
  const TxtExplore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Explore',
      style: TextStyle(
          color: Color(primeTxtColor),
          fontSize: 24,
          fontWeight: FontWeight.bold),
    );
  }
}
