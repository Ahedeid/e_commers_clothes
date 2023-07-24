import 'package:codes/drawer/drawer_screen.dart';
import 'package:codes/logic/localData/shared_pref.dart';
import 'package:codes/screens/home_screen/home_screen.dart';
import 'package:codes/screens/on_bording_screens/page_view/page_view.dart';
import 'package:codes/screens/registration/login_Screen/Login_screen.dart';
import 'package:codes/util/constat_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    bool onBoardingShows = SharedPrefController().getShowOnce();
    bool isLogIn = SharedPrefController().getLogedin();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => isLogIn
                ? const DrawerScreen()
                : onBoardingShows
                    ? LogInScreen()
                    : const MPageView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(logo),
      ),
    );
  }
}
