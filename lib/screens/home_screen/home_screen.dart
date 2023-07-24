import 'package:codes/drawer/drawer_screen.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/cart_page/cart_screen.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/home_page/navBar_home_Screen.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/liked_page/liked_screen.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/profile_page/profile_screen.dart';
import 'package:codes/screens/home_screen/widget/home_cust_bottom_navBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List pages = [
    const NavBarHomeScreen(),
    CartScreen(),
    const LikedScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const DrawerScreen(),
      extendBodyBehindAppBar: true,
      body: pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
    );
  }
}
