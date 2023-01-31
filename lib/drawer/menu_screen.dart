
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/constant.dart';
import '../util/constat_assets.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 35,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(person)),
                ),
                Column(
                  children: const [
                    Text(
                      'Alex Nikiforov',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'alex@msn.com',
                      style: TextStyle(color: Color(secandTxtColor)),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                )
              ],
            ),
         const SizedBox(height: 40 ),
         drawerListTile(image: heartd, txt: 'My favorites',),
            const SizedBox(height: 10 ),
            drawerListTile(image: wallet, txt: 'Wallets',),
            const SizedBox(height: 10 ),
            drawerListTile(image: bag, txt: 'My orders',),
            const SizedBox(height: 10 ),
            drawerListTile(image: Info, txt: 'About us',),
            const SizedBox(height: 10 ),
            drawerListTile(image: locka, txt: 'Privacy policy',),
            const SizedBox(height: 10 ),
            drawerListTile(image: setting, txt: 'Settings',),


            const SizedBox(height: 50 ),
            drawerListTile(image: logout, txt: 'Log out',),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                  height: 60,
                  width: 52,
                  child: SvgPicture.asset(logo)),
            )
          ],
        ),
      ),
    );
  }
}

class drawerListTile extends StatelessWidget {
   drawerListTile({
    required this.image,required this.txt
  });
String txt ;
String image ;
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
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
