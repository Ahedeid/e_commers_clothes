import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/home_hor_list2..dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/nav_home-txt-bestOutFit.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/nav_home_hor_list_shirt.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/nav_home_new_arrival.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/nav_home_txtExplore.dart';
import 'package:flutter/material.dart';

import '../../../shared/cus_searchBar.dart';
import '../../home_screen/widget/home_cust_appBar.dart';

class NavBarHomeScreen extends StatelessWidget {
  const NavBarHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeCustAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children:  [
            const SizedBox(height: 14),
            const TxtExplore(),
            const SizedBox(height: 20),
            const TxtBestOutFit(),
            const SizedBox(height: 25),
            CustSearhBar(txt: 'Search items...',),
            const SizedBox(height: 35),
             HomeHorListShirt(),
            const SizedBox(height: 40),
            const HomeNewArrival(),
             HomeHorList2(),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

