import 'package:codes/drawer/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../../util/constant.dart';


class HomeCustAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeCustAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 5),
      child: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:  AppBarIconDrawer(
          contet: context,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.location_on_outlined,
              color: Colors.black,
              size: 17,
            ),
            Text(
              '15/2 New Texas',
              style:
              TextStyle(fontSize: smallSize, color: Color(primeTxtColor)),
            ),
          ],
        ),
        actions: [
          InkWell(
              onTap: () {},
              child: SvgPicture.asset('assets/icons/notification.svg')),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class AppBarIconDrawer extends StatefulWidget {
  AppBarIconDrawer({

    required this.contet,
    Key? key,
  }) : super(key: key);
 BuildContext contet;
  @override
  State<AppBarIconDrawer> createState() => _AppBarIconDrawerState();
}

class _AppBarIconDrawerState extends State<AppBarIconDrawer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          debugPrint("This is null is open ${DrawerScreen.zoomDrawerController.stateNotifier}");
          debugPrint("This is null is open ${ZoomDrawer.of(widget.contet)}");
          if (ZoomDrawer.of(widget.contet)!.isOpen()) {
            ZoomDrawer.of(widget.contet)!.close();
          } else {
            ZoomDrawer.of(widget.contet)!.open();
          }
        },
        child: SvgPicture.asset(
          'assets/icons/menu.svg',
          fit: BoxFit.scaleDown,
        ));
  }
}
