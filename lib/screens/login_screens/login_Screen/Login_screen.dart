import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/cus_txtField.dart';
import '../../../util/constant.dart';
import '../../../util/constat_assets.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 54,
              width: 52,
              child: SvgPicture.asset(logo),
            ),
            const SizedBox(height: 15),
            const Text(
              'Log in',
              style: TextStyle(fontSize: bigSize, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 33),
            CusTxtFiled(hint: 'Email', message),
            const SizedBox(height: 16),
            CusTxtFiled(hint: 'Password', lock),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(''),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: Color(primeTxtColor)),
                    )),
              ],
            ),
            const SizedBox(height: 17),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(primeColorInApp)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                    fixedSize: MaterialStateProperty.all(const Size(205, 59))),
                onPressed: () {},
                child: const Text(
                  'Log in',
                  style: TextStyle(color: Colors.white, fontSize: medSize),
                )),
            const SizedBox(height: 43),
            Row(
              children: const [
                 Divider(
                   indent: 50,
                  endIndent:120,
                  height: 5,
                  thickness: 5,
                  color: Colors.black,
                ),
                Text('Or'),
                Divider(
                indent: 20,
                  endIndent: 70,
                  color: Colors.black,
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
