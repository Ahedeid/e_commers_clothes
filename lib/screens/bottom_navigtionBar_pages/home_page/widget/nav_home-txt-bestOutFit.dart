import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class TxtBestOutFit extends StatelessWidget {
  const TxtBestOutFit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'best Outfits for you',
      style: TextStyle(
        color: Color(secandTxtColor),
        fontSize: 24,
      ),
    );
  }
}
