import 'package:flutter/material.dart';

import '../../../../../util/constant.dart';

class CusGridView extends StatefulWidget {
  CusGridView({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List images;

  @override
  State<CusGridView> createState() => _CusGridViewState();
}

class _CusGridViewState extends State<CusGridView> {
  int isSelected = 0 ;

  _onSelected(int index) {
    setState(() {
      isSelected = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'seeAll_det_screen');
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xffEFEFF2),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(widget.images[index]),
                              ),
                              Positioned(
                                right: 7,
                                top: 7,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: IconButton(
                                    icon: isSelected == index
                                        ? const Icon(
                                            Icons.favorite,
                                            size: 15,
                                            color: Color(primeColorInApp),
                                          )
                                        : const Icon(
                                            Icons.favorite_border,
                                            size: 15,
                                            color: Color(primeColorInApp),
                                          ),
                                    onPressed: () {
                                      _onSelected(index);
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Long Sleeve Shirts',
                    ),
                    const Text(
                      '\$100',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                  ],
                )),
          );
        },
      ),
    );
  }
}
