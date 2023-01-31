import 'package:flutter/material.dart';

import '../../../../../../util/constat_assets.dart';

class DetScreenImage extends StatelessWidget {
  const DetScreenImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Image.asset(im41),
    );
  }
}
