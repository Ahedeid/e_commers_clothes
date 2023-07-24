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
                    IconButton(
                      onPressed: () {
                        widget.onItemTapped(0);
                      },
                      icon: Icon(
                        Icons.home_outlined,
                        size: 28,
                        color: widget.selectedIndex == 0
                            ? const Color(primeColorInApp)
                            : Colors.grey.shade400,
                      ),
                    )
                  ],
                ),
                Column(
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
                    IconButton(
                        onPressed: () {
                          widget.onItemTapped(1);
                        },
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: widget.selectedIndex == 1
                              ? const Color(primeColorInApp)
                              : Colors.grey.shade400,
                        ))
                  ],
                ),
                Column(
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
                    IconButton(
                        onPressed: () {
                          widget.onItemTapped(2);
                        },
                        icon: Icon(
                          Icons.favorite_border,
                          color: widget.selectedIndex == 2
                              ? const Color(primeColorInApp)
                              : Colors.grey.shade400,
                        ))
                  ],
                ),
                Column(
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
                    IconButton(
                      icon: Icon(
                        Icons.person,
                        color: widget.selectedIndex == 3
                            ? const Color(primeColorInApp)
                            : Colors.grey.shade400,
                      ),
                      onPressed: () {
                        widget.onItemTapped(3);
                      },
                    ),
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
