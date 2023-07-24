import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/widget/seeAll_gridView.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/widget/txt_search_results_shirt.dart';
import 'package:codes/shared/cus_searchBar.dart';
import 'package:codes/shared/custom_appBar.dart';
import 'package:codes/util/constant.dart';
import 'package:codes/util/constat_assets.dart';
import 'package:flutter/material.dart';

class HomeSeeAllSectionB extends StatelessWidget {
  HomeSeeAllSectionB({Key? key}) : super(key: key);

  final List images = [im1, im2, im3, im4, im5, im6];
  final GlobalKey scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: CustomAppBar(
        title: 'New Arrival',
        action: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            CustomSearchBar(txt: 'Shirt'),
            const ExpansionTile(
              title: Text(
                'Recent searches',
                style: TextStyle(
                  fontSize: medSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(height: 11),
            const TxtSearchResultsShirt(),
            const SizedBox(height: 20),
            CusGridView(images: images),
          ],
        ),
      ),
    );
  }
}
