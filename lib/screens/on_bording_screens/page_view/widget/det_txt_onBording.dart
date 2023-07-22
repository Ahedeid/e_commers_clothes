import 'package:codes/model/p_models.dart';
import 'package:flutter/material.dart';


class DetTxtOnBoarding extends StatelessWidget {
  const DetTxtOnBoarding({
    Key? key,
    required List<PageModel> data,
    required int index,
  })  : _data = data,
        _index = index,
        super(key: key);

  final List<PageModel> _data;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return Text(
      _data[_index].det,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
    );
  }
}
