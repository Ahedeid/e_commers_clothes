import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../util/constat_assets.dart';
import '../on_bording_screens/page_view/page_view.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);
  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MPageView()),);
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


