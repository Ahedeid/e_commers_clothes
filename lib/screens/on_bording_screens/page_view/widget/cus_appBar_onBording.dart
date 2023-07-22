import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';

class CustomAppBarOnBoarding extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarOnBoarding({
    Key? key,
    required int index,
  })  : _index = index,
        super(key: key);

  final int _index;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            '${_index + 1}/3',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'login_screen');
            },
            child: const Text(
              'Skip',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(highAppBar);
}
