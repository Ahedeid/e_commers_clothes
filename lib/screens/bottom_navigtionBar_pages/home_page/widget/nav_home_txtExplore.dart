import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';

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
          fontSize: 32,
          fontWeight: FontWeight.w500),
    );
  }
}
