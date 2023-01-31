import 'package:flutter/material.dart';

import '../../../../../../../util/constant.dart';



class MyCartContentCard extends StatefulWidget {
  MyCartContentCard({
    Key? key,
    required this.mycart_images,required this.index
  }) : super(key: key);
  final List mycart_images;
  int index;

  @override
  State<MyCartContentCard> createState() => _MyCartContentCardState();
}

class _MyCartContentCardState extends State<MyCartContentCard> {
int count=1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 84,
          height: 73,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xff3e42291a),
          ),
          child: Image.asset(widget.mycart_images[widget.index]),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'Henley Shirts',
              style: TextStyle(
                  color: Color(secandTxtColor),
                  fontSize: medSize),
            ),
            Text(
              '\$250',
              style: TextStyle(
                  color: Color(primeTxtColor),
                  fontWeight: FontWeight.bold,
                  fontSize: medSize),
            ),
          ],
        ),
        ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(8)),
                ),
                minimumSize: const MaterialStatePropertyAll(
                    Size(26, 22)),
                backgroundColor: MaterialStatePropertyAll(
                    Colors.deepOrange.shade100)),
            onPressed: () {
              setState(() {
                count ++ ;
              });
            },
            child: const Text(
              '+',
              style: TextStyle(
                  color: Color(primeColorInApp),
                  fontSize: 16),
            )),
         Text('$count',style: const TextStyle(fontSize: medSize),),
        ElevatedButton(

            style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(8)),
                ),
                minimumSize: const MaterialStatePropertyAll(
                    Size(26, 22)),
                backgroundColor: MaterialStatePropertyAll(
                    Colors.deepOrange.shade100)),
            onPressed: () {
             setState(() {
               count == 1 ? 1:count -- ;
             });
            },
            child: const Text(
              '-',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(primeColorInApp),
                  fontSize: 16),
            )),
      ],
    );
  }
}
