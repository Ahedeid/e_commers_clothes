import 'package:codes/screens/bottom_navigtionBar_pages/cart_page/widget/my_orders_contentCard.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/home_hor_list2..dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/nav_home-txt-bestOutFit.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/nav_home_hor_list_shirt.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/nav_home_new_arrival.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/nav_home_txtExplore.dart';
import 'package:codes/screens/home_screen/widget/home_cust_appBar.dart';
import 'package:codes/shared/cus_searchBar.dart';
import 'package:codes/util/constat_assets.dart';
import 'package:flutter/material.dart';

class NavBarHomeScreen extends StatelessWidget {
  NavBarHomeScreen({
    Key? key,
  }) : super(key: key);

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
      appBar: const HomeCustAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            const TxtExplore(),
            const SizedBox(height: 8),
            const TxtBestOutFit(),
            const SizedBox(height: 25),
            const CustomSearchBar(
              txt: 'Search items...',
            ),
            const SizedBox(height: 30),
            HomeHorListShirt(),
            const SizedBox(height: 35),
            const HomeNewArrival(
              title: 'New Arrival',
            ),
            HomeHorList2(),
            const SizedBox(height: 25),
            const HomeNewArrival(
              title: 'Popular Item',
            ),
            const SizedBox(height: 5),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 92,
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: MyOrdersContentCard(
                        myCartImages: myCartImages,
                        index: index,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
