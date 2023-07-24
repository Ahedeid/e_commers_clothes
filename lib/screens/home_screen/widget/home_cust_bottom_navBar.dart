import 'package:codes/shared/CustomeSvg.dart';
import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int selectedIndex;

  final Function onItemTapped;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      ),
      child: BottomAppBar(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.selectedIndex == 0
                        ? Material(
                            elevation: 5,
                            child: Container(
                              width: 13,
                              height: 6,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                                color: Color(primeColorInApp),
                              ),
                            ))
                        : const SizedBox(
                            width: 13,
                            height: 6,
                          ),
                    InkWell(
                      onTap: () {
                        widget.onItemTapped(0);
                      },
                      child: CustomSvgAssets(
                        height: 30,
                        width: 30,
                        path: 'assets/icons/home.svg',
                        color: widget.selectedIndex == 0
                            ? const Color(primeColorInApp)
                            : Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.selectedIndex == 1
                        ? Material(
                            elevation: 5,
                            child: Container(
                              width: 13,
                              height: 6,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                                color: Color(primeColorInApp),
                              ),
                            ),
                          )
                        : const SizedBox(
                            width: 13,
                            height: 6,
                          ),
                    InkWell(
                      onTap: () {
                        widget.onItemTapped(1);
                      },
                      child: CustomSvgAssets(
                        height: 30,
                        width: 30,
                        path: 'assets/icons/buy.svg',
                        color: widget.selectedIndex == 1
                            ? const Color(primeColorInApp)
                            : Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.selectedIndex == 2
                        ? Material(
                            elevation: 5,
                            child: Container(
                              width: 13,
                              height: 6,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                                color: Color(primeColorInApp),
                              ),
                            ),
                          )
                        : const SizedBox(
                            width: 13,
                            height: 6,
                          ),
                    InkWell(
                      onTap: () {
                        widget.onItemTapped(2);
                      },
                      child: CustomSvgAssets(
                        height: 30,
                        width: 30,
                        path: 'assets/icons/heart.svg',
                        color: widget.selectedIndex == 2
                            ? const Color(primeColorInApp)
                            : Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    widget.selectedIndex == 3
                        ? Material(
                            elevation: 5,
                            child: Container(
                              width: 13,
                              height: 6,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                                color: Color(primeColorInApp),
                              ),
                            ),
                          )
                        : const SizedBox(
                            width: 13,
                            height: 6,
                          ),
                    InkWell(
                      onTap: () {
                        widget.onItemTapped(3);
                      },
                      child: CustomSvgAssets(
                        height: 30,
                        width: 30,
                        path: 'assets/icons/profile.svg',
                        color: widget.selectedIndex == 3
                            ? const Color(primeColorInApp)
                            : Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
