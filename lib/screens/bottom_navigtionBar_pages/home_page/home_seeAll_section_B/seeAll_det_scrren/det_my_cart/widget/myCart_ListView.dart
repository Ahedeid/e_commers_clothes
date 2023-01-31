
import 'package:flutter/material.dart';
import '../../../../../../../util/constant.dart';
import '../../../../../../../util/constat_assets.dart';
import 'my_cart_contentCard.dart';


class MyCartListView extends StatelessWidget {
   MyCartListView({
    Key? key,
  }) : super(key: key);

   List mycart_images = [
     im31,
     im32,
     im33,
     im34,
     im31,
   ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 92,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)),
              child: Card(
                child: MyCartContentCard(mycart_images: mycart_images, index: index,),
              ),
            );
          }),
    );
  }
}

