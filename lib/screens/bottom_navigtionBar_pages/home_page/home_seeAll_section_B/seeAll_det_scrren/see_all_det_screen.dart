import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/widget/det_screen_image.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/home_seeAll_section_B/seeAll_det_scrren/widget/det_screen_section_B.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/custom_appBar.dart';

class SeeAllDetScreen extends StatelessWidget {
  const SeeAllDetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar:  CustomAppBar(title: '', action: true,),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: const [
            DetScreenImage(),
            DetScreenSectionB()
          ],
        ),
      ),
    );
  }
}



