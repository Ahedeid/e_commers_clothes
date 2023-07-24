
import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';


class HomeNewArrival extends StatelessWidget {
  const HomeNewArrival({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Text(
       title,
        style: const TextStyle(
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
