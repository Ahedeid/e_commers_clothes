import 'package:flutter/material.dart';

import '../../../../../util/constant.dart';



class TxtSearchResultsShirt extends StatelessWidget {
  const TxtSearchResultsShirt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Search results showing for “Shirt”',
      style: TextStyle(
        fontSize: medSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
