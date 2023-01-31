import 'package:codes/util/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../util/constat_assets.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SettingTile(
              txt: 'Email Support',
              image: messagea,
              nav: '',
            ),
            const SizedBox(height: 10),
            SettingTile(
              txt: 'FAQ',
              image: Info,
              nav: '',
            ),
            const SizedBox(height: 10),
            SettingTile(
              txt: 'Privacy Statement',
              image: locka,
              nav: '',
            ),
            const SizedBox(height: 10),
            SettingSwitchs(image: notificationa, txt: 'Notification',),
            const SizedBox(height: 10),
            SettingSwitchs(image: update, txt: 'Update',),
          ],
        ),
      ),
    );
  }
}


class SettingSwitchs extends StatefulWidget {
   SettingSwitchs({
     required this.image,required this.txt
});
  String txt ;
  String image ;

  @override
  State<SettingSwitchs> createState() => _SettingSwitchsState();
}

class _SettingSwitchsState extends State<SettingSwitchs> {
  bool selected = false;

  void _onTab(val) {
    setState(() {
      selected = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Container(
          width: 42,
          height: 43,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(246, 121, 82, 0.2),
          ),
          child: SvgPicture.asset(widget.image,fit: BoxFit.scaleDown,)),
      title:  Text(
       widget.txt ,
        style: const TextStyle(color: Colors.black),
      ),
      trailing: CupertinoSwitch(
          activeColor: const Color(primeColorInApp),
          value: selected,
          onChanged: _onTab),
    );
  }
}


class SettingTile extends StatelessWidget {
  String txt;

  String image;

  String nav;

  SettingTile(
      {super.key, required this.nav, required this.txt, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 42,
        height: 43,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(246, 121, 82, 0.2),
        ),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.scaleDown,
        ),
      ),
      title: Text(
        txt,
        style: const TextStyle(color: Colors.black),
      ),
      trailing: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, nav);
          },
          icon: const Icon(
            Icons.arrow_forward_ios,
            size: 19,
          )),
    );
  }
}
