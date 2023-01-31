import 'package:flutter/material.dart';
import 'checkOut_delivert_free.dart';

class CheckOunCardTotal extends StatelessWidget {
  const CheckOunCardTotal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 152,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CheckOutDelivertFree(
                txt: 'Delivery Fee     : ',
                prise: '\$50',
              ),
              const SizedBox(height: 10),
              CheckOutDelivertFree(
                txt: 'Subtotal            : ',
                prise: '\$740',
              ),
              const SizedBox(height: 5),
              const Divider(),
              const SizedBox(height: 10),
              CheckOutDelivertFree(
                txt: 'Total                  :',
                prise: '\$790',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
