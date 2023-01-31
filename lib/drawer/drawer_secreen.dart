import 'package:codes/screens/home_screen/home_screen.dart';
import 'package:codes/screens/launch_screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'menu_screen.dart';

class DrawerScreen extends StatefulWidget {
  static ZoomDrawerController zoomDrawerController = ZoomDrawerController();

  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {


  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      //drawerShadowsBackgroundColor: Colors.orangeAccent,
      borderRadius: 20,
      menuScreenWidth: 300,
      controller:DrawerScreen. zoomDrawerController,
      menuScreen: const MenuScreen(),
      mainScreen: const HomeScreen(),
      showShadow: true,
      style: DrawerStyle.defaultStyle,
      angle: 0.0,
      isRtl: false,
      //overlayBlur: 2,
      //shadowLayer1Color: Colors.transparent,
      //shadowLayer2Color: Colors.transparent,
    );
  }
}