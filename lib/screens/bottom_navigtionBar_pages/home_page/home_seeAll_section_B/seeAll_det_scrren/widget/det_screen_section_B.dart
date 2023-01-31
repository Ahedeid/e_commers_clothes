import 'package:flutter/material.dart';

import '../../../../../../shared/cust_button.dart';
import '../../../../../../util/constant.dart';

class DetScreenSectionB extends StatelessWidget {
  const DetScreenSectionB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        height: 360,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('''Casual Henley 
Shirts''',style: TextStyle(fontWeight: FontWeight.bold,fontSize: bigSize),),
                  Text('\$175',style: TextStyle(fontWeight: FontWeight.bold,fontSize: bigSize),),

                ],
              ),
              const SizedBox(height: 16),
              const Text('A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.',
                style: TextStyle(color: Color(secandTxtColor)),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Colors',
                    style: TextStyle(color: Color(secandTxtColor),fontSize: medSize),
                  ),
                  Text(''),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffBEE8EA)
                    ),
                  ),
                  const SizedBox(width: 9),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black
                    ),
                  ),
                  const SizedBox(width: 9),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffCEE3F5)
                    ),
                  ),
                  const SizedBox(width: 9),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF4E5C3)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              CustButton(txt: 'Add to Cart', color: const Color(primeColorInApp), nav: 'det_my_cart_screen',)

            ],
          ),
        ),
      ),
    );
  }
}
