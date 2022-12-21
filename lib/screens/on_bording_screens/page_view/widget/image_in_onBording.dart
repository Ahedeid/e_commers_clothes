import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../model/p_models.dart';

class ImageInOnBording extends StatelessWidget {
  const ImageInOnBording({
    Key? key,
    required PageController controller,
    required List<PageModel> data,
  }) : _controller = controller, _data = data, super(key: key);

  final PageController _controller;
  final List<PageModel> _data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          controller: _controller,
          itemCount: _data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SvgPicture.asset(
                  _data[index].imagePath!,
                  width: 323.5,
                  height: 325.5,
                ),
              ],
            );
          }),
    );
  }
}
