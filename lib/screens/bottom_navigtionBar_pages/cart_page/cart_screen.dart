import 'package:codes/screens/bottom_navigtionBar_pages/cart_page/widget/my_orders_contentCard.dart';
import 'package:codes/shared/secandappBar.dart';
import 'package:codes/util/constat_assets.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  final List myCartImages = [
    im31,
    im32,
    im33,
    im34,
    im31,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecandAppBar(
        title: 'My Orders',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 92,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MyOrdersContentCard(
                    myCartImages: myCartImages,
                    index: index,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
