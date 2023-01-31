import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/det_my_cart/checkout_Screen/widget/checkOun_card_total.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/det_my_cart/checkout_Screen/widget/checkOut_hedar_txt.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/det_my_cart/checkout_Screen/widget/checkOut_pay_methode.dart';
import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

import '../../../../../../../shared/custom_appBar.dart';
import '../../../../../../../util/constat_assets.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  bool isSelected = false;
  bool isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Checkout',
        action: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 21,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CheckOutHedarTxt(txt: 'Delivery address'),
            const SizedBox(height: 25),
            SizedBox(
              height: 86,
              child: Material(
                elevation: isSelected == false ? 0 : 5,
                borderRadius: BorderRadius.circular(10),
                child: CheckboxListTile(
                    side: BorderSide(color: Colors.grey.shade300),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    title: const Text(
                      'Home',
                      style: TextStyle(
                          fontSize: medSize,
                          fontWeight: FontWeight.bold,
                          color: Color(primeTxtColor)),
                    ),
                    activeColor: const Color(primeColorInApp),
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    controlAffinity: ListTileControlAffinity.leading,
                    secondary: const Icon(Icons.edit),
                    tileColor:
                        isSelected == false ? Colors.transparent : Colors.white,
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 5),
                        Text(
                          '(342)  4522019',
                          style: TextStyle(
                              color: Color(secandTxtColor), fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '220  New York',
                          style: TextStyle(
                              color: Color(secandTxtColor), fontSize: 12),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Optionally
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    value: isSelected,
                    onChanged: (val) {
                      setState(() {
                        isSelected = val!;
                      });
                    }),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 86,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: CheckboxListTile(
                    side: BorderSide(color: Colors.grey.shade300),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    title: const Text(
                      'Office',
                      style: TextStyle(
                          fontSize: medSize,
                          fontWeight: FontWeight.bold,
                          color: Color(primeTxtColor)),
                    ),
                    activeColor: const Color(primeColorInApp),
                    checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    controlAffinity: ListTileControlAffinity.leading,
                    secondary: const Icon(Icons.edit),
                    tileColor:
                        isSelected == false ? Colors.transparent : Colors.white,
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 5),
                        Text(
                          '(342)  4522019',
                          style: TextStyle(
                              color: Color(secandTxtColor), fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '220  Montmartre,paris',
                          style: TextStyle(
                              color: Color(secandTxtColor), fontSize: 12),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Optionally
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    value: isSelected2,
                    onChanged: (val) {
                      setState(() {
                        isSelected2 = val!;
                      });
                    }),
              ),
            ),
            const SizedBox(height: 33),
            CheckOutHedarTxt(
              txt: 'Billing information',
            ),
            const SizedBox(height: 16),
            const CheckOunCardTotal(),
            const SizedBox(height: 33),
            CheckOutHedarTxt(
              txt: 'Payment Method',
            ),
            const SizedBox(height: 33),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CheckOutPayMethode(
                  image: applepay,
                ),
                CheckOutPayMethode(
                  image: visa,
                ),
                CheckOutPayMethode(
                  image: mastercard,
                ),
                CheckOutPayMethode(
                  image: paypal,
                ),
              ],
            ),
            const SizedBox(height: 30),
            SliderButton(
          height: 60,
          buttonSize: 48,
          // shimmer: false,
            baseColor: Colors.white,
          backgroundColor: const Color(primeColorInApp),
          action: () {
            Navigator.pushReplacementNamed(context, 'payment_screen');
          },
          label: const Text(
            'Swipe for Payment',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
          ),
          icon: const Icon(Icons.arrow_forward,color: Color(primeColorInApp),)
            ),
          ],
        ),
      ),
    );
  }
}
