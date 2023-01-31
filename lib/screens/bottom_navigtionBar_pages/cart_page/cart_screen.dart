import 'package:codes/screens/bottom_navigtionBar_pages/cart_page/widget/my_orders_contentCard.dart';
import 'package:flutter/material.dart';

import '../../../shared/secandappBar.dart';
import '../../../util/constat_assets.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  List mycart_images = [
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
        padding: const EdgeInsets.only(left: 20, right: 19, top: 20),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                height: 92,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Card(
                  elevation: 0,
                  child: MyOrdersContentCard(
                    mycart_images: mycart_images,
                    index: index,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
