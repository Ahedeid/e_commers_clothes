import 'package:flutter/material.dart';

import '../../../../model/p_models.dart';

class DetTxtOnBording extends StatelessWidget {
  const DetTxtOnBording({
    Key? key,
    required List<PageModel> data,
    required int index,
  }) : _data = data, _index = index, super(key: key);

  final List<PageModel> _data;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 58,
        child: Text(
          _data[_index].det,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ));
  }
}
