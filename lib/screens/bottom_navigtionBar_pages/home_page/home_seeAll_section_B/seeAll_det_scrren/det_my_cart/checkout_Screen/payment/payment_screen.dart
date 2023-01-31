import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/det_my_cart/checkout_Screen/payment/widget/payment_circle_line.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/det_my_cart/checkout_Screen/payment/widget/payment_txt_prime.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/det_my_cart/checkout_Screen/payment/widget/payment_txt_secand.dart';
import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../shared/cust_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PaymentCircleLine(),
            const SizedBox(height: 84),
            const PaymentTxtPrime(),
            const SizedBox(height: 10),
            const PaymentTXTSecand(),
            const SizedBox(height: 45),
            CustButton(
              txt: 'Get your receipt',
              color: const Color(primeColorInApp),
              nav: '',
            ),
            const SizedBox(height: 15),
            CustButton(
              txt: 'Back to Home',
              color: const Color(0xffFFE9E2),
              nav: 'home_screen',
            ),
          ],
        ),
      ),
    );
  }
}



