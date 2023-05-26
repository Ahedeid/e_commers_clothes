import 'package:flutter/material.dart';

import '../../../../util/constant.dart';


class CustAppBarOnBording extends StatelessWidget implements PreferredSizeWidget{
  const CustAppBarOnBording({
    Key? key,
    required int index,
  }) : _index = index, super(key: key);

  final int _index;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title:
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          '${_index+1}/3',
          style: const TextStyle(color: Colors.black,),
        ),
        InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, 'login_screen');
          },
          child: const Text(
            'Skip',
            style: TextStyle(color: Colors.black,),
          ),
        ),
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(highAppBar) ;
}