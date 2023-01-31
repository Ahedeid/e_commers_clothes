import 'package:flutter/material.dart';

import '../util/constant.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  String title ;
  bool action ;
   CustomAppBar(
   {super.key, required this.title, required this.action }
  ) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
      child: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:   Text(title,style: const TextStyle(fontSize: titleAppBarSize,fontWeight: FontWeight.bold,color: Color(primeTxtColor)),),
         leading: IconButton(
           onPressed: () {
             Navigator.pop(context);
           },
           icon: const Icon(Icons.arrow_back_ios),
           color: Colors.black,
         ),
        actions: [
          Visibility(
            visible: action ,
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
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);
}
