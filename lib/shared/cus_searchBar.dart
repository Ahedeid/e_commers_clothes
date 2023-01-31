import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/bottom_navigtionBar_pages/home_page/widget/filter_bottom_sheet.dart';
import '../util/constant.dart';
import '../util/constat_assets.dart';

class CustSearhBar extends StatefulWidget {
  String txt;

  CustSearhBar({super.key, required this.txt});

  @override
  State<CustSearhBar> createState() => _CustSearhBarState();
}

class _CustSearhBarState extends State<CustSearhBar> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: widget.txt,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                    isDismissible: true,
                    barrierColor: Colors.black.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    context: context,
                    builder: (context) {
                      return const FilterBottomSheet();
                    });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(primeColorInApp),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  filterIcon,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none)),
      ),
    );
  }
}






