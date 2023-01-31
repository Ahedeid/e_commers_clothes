import 'package:flutter/material.dart';

import '../../../../util/constant.dart';
import '../../../../util/constat_assets.dart';


class HomeHorList2 extends StatelessWidget {
   HomeHorList2({
    Key? key,
  }) : super(key: key);

   List home_horB_images =[
     im1,
     im2,
     im3,
     im4,
     im1,
     im2,
     im3,
     im4,
   ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'seeAll_det_screen');
                },
                child: Container(
                  width: 154,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                            width: 142,
                            height: 140,
                            decoration: BoxDecoration(
                                color: const Color(0xffEFEFF2),
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.asset(home_horB_images[index])),
                      ),
                      const Text(
                        'Casual Henley Shirts',
                        style: TextStyle(color: Color(primeTxtColor)),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '\$275',
                        style: TextStyle(color: Color(primeTxtColor)),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
