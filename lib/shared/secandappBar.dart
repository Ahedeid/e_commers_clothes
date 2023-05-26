import 'package:flutter/material.dart';

import '../util/constant.dart';


class SecandAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title ;
   SecandAppBar({super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title:  Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: bigSize,color: Colors.black),),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
