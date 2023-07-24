import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgAssets extends StatelessWidget {
  final String? path;
  final Color? color;
  final BoxFit fit;
  final double? width;
  final double? height;

 const CustomSvgAssets({
    Key? key,
    this.path,
    this.color,
    this.fit = BoxFit.scaleDown,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path!,
      fit: BoxFit.scaleDown,
      color: color,
      height: height,
      width: width,
    );
  }
}
