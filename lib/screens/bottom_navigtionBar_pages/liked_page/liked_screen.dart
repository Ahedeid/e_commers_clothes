import 'package:codes/shared/secandappBar.dart';
import 'package:codes/util/constant.dart';
import 'package:codes/util/constat_assets.dart';
import 'package:flutter/material.dart';

class LikedScreen extends StatefulWidget {
  const LikedScreen({Key? key}) : super(key: key);

  @override
  State<LikedScreen> createState() => _LikedScreenState();
}

class _LikedScreenState extends State<LikedScreen> {
  int isSelected = 0;

  List images = [
    im1,
    im2,
    im3,
    im4,
    im5,
    im6,
    im1,
    im2,
    im3,
    im4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecandAppBar(
        title: 'Favorite',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: images.length,
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
                  padding: const EdgeInsets.symmetric(vertical: 5),
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
                                  child: Image.asset(images[index]),
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
                      const SizedBox(height: 5),
                      const Text(
                        '\$100',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                    ],
                  )),
            );
          },
        ),
      ),
    );
  }

  _onSelected(int index) {
    setState(() {
      isSelected = index;
    });
  }
}
