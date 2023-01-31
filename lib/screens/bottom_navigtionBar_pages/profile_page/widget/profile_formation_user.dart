import 'package:codes/screens/bottom_navigtionBar_pages/profile_page/widget/profile_information.dart';
import 'package:flutter/material.dart';


class FormationUser extends StatelessWidget {
  const FormationUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 194,
        child: Card(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side:  BorderSide(width: 1,color: Colors.grey.shade300)
          ),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                ProfileInformation(txt: 'Name :', Information: 'Chris Harison ',),
                const SizedBox(height: 13),
                ProfileInformation(txt: 'Email: ', Information: 'chris@gmail.com',),
                const SizedBox(height: 13),
                ProfileInformation(txt: 'Location: ', Information: 'San Diego',),
                const SizedBox(height: 13),
                ProfileInformation(txt: 'Zip Code:', Information: '1200',),
                const SizedBox(height: 13),
                ProfileInformation(txt: 'Phone Number:', Information: '(+1) 5484 4757 84',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
