import 'package:codes/screens/bottom_navigtionBar_pages/home_page/widget/filter_bottom_sheet.dart';
import 'package:codes/util/constant.dart';
import 'package:codes/util/constat_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatefulWidget {
  final String txt;

  const CustomSearchBar({super.key, required this.txt});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
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
            margin: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
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
        suffixIconConstraints:
            const BoxConstraints(minWidth: 65, minHeight: 50),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
