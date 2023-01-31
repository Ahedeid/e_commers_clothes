import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/det_my_cart/widget/myCart_ListView.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/det_my_cart/widget/myCart_subTotal.dart';
import 'package:codes/shared/custom_appBar.dart';
import 'package:flutter/material.dart';
import '../../../../../../shared/cust_button.dart';
import '../../../../../../util/constant.dart';

class DetMyCartScreen extends StatelessWidget {
  const DetMyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'My Cart',
          action: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 20),
          child: Column(
            children: [
               MyCartListView(),
              const SizedBox(height: 10),
              const MyCartSubTotal(),
              const SizedBox(height: 32),
              CustButton(txt: 'Checkout', color: const Color(primeColorInApp), nav: 'checkOut_screen',)

            ],
          ),
        ));
  }
}


