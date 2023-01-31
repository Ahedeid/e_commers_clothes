
import 'package:flutter/material.dart';

import '../../../util/constant.dart';


class CustomBottomNavBar extends StatefulWidget {
   CustomBottomNavBar({super.key, required this.selectedIndex,required this.onItemTapped}) ;
  int selectedIndex ;
   Function onItemTapped ;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//  int _selectedIndex = 0;

// void _onItemTapped(int index) {
//   setState(() {
//    widget.selectedIndex = index;
//    //print(index);
//    //print(widget.selectedIndex);
//   });
// }

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: BottomAppBar(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [
                    Material(
                      elevation: 5,
                      child: Visibility(
                        visible: widget.selectedIndex == 0 ? true : false,
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
                      ),
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
                    Material(
                      elevation: 5,
                      child: Visibility(
                        visible: widget.selectedIndex == 1 ? true : false,
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
                      ),
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
                    Material(
                      elevation: 5,
                      child: Visibility(
                        visible: widget.selectedIndex == 2 ? true : false,
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
                      ),
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
                    Material(
                      elevation: 5,
                      child: Visibility(
                        visible: widget.selectedIndex == 3 ? true : false,
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
                      ),
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
    ) ;
  }
}