import 'package:flutter/material.dart';

import '../../../../model/p_models.dart';

class MainTxtOnBording extends StatelessWidget {
  const MainTxtOnBording({
    Key? key,
    required List<PageModel> data,
    required int index,
  }) : _data = data, _index = index, super(key: key);

  final List<PageModel> _data;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Text(
        _data[_index].title,
        style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
    );
  }
}
