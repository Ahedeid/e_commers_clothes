import 'package:flutter/material.dart';

import '../../../../util/constat_assets.dart';


class HomeHorListShirt extends StatelessWidget {
   HomeHorListShirt({
    Key? key,
  }) : super(key: key);

  List home_images_hor=<String>[
    d1,
    d2,
    d3,
    d4,
    d1,
    d2,
    d3,
    d4,
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 9),
                  Image.asset(home_images_hor[index]),
                  const SizedBox(height: 10),
                  const Text('Shirt'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
