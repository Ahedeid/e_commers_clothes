import 'package:codes/screens/bottom_navigtionBar_pages/profile_page/widget/profile_formation_user.dart';
import 'package:codes/screens/bottom_navigtionBar_pages/profile_page/widget/profile_progressCard.dart';
import 'package:codes/shared/secandappBar.dart';
import 'package:codes/util/constant.dart';
import 'package:codes/util/constat_assets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: SecandAppBar(
        title: 'Profile',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      cover,
                      fit: BoxFit.cover,
                    )),
                Positioned(
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 60,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(55),
                        child: Image.asset(person)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Alex Nikiforov',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: bigSize,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'alex@msn.com',
              style: TextStyle(color: Color(secandTxtColor)),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                progressCard(
                  txt: 'Progress order',
                  number: '+10',
                  images: bag,
                  lone: const Color.fromRGBO(246, 121, 82, 0.07),
                ),
                progressCard(
                  txt: 'Promocodes',
                  number: '5',
                  images: ticket,
                  lone: const Color.fromRGBO(14, 162, 246, 0.07),
                ),
                progressCard(
                  txt: 'Reviewes',
                  number: '4.5K',
                  images: star,
                  lone: const Color.fromRGBO(255, 193, 7, 0.07),
                ),
              ],
            ),
            const SizedBox(height: 35),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Personal Information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: medSize,
                    ),
                  ),
                  Text('')
                ],
              ),
            ),
            const SizedBox(height: 14),
            const FormationUser(),
          ],
        ),
      ),
    );
  }
}
