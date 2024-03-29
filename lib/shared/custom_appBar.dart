import 'package:codes/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  final bool action;

  CustomAppBar({super.key, required this.title, required this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
      child: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: titleAppBarSize,
            fontWeight: FontWeight.bold,
            color: Color(primeTxtColor),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        actions: [
          Visibility(
            visible: action,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.favorite,
                  color: Color(primeColorInApp),
                ),
              ),
            ),
          )
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);
}
