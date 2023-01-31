
import 'package:flutter/material.dart';

import '../../../../util/constant.dart';

class HomeNewArrival extends StatelessWidget {
  const HomeNewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Text(
        'New Arrival',
        style: TextStyle(
          fontSize: bigSize,
          fontWeight: FontWeight.bold,
          color: Color(primeTxtColor),
        ),
      ),
      trailing: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'home_seeAll_section_B');
          },
          child: const Text(
            'See All',
            style: TextStyle(fontSize: smallSize, color: Color(secandTxtColor)),
          )),
    );
  }
}
