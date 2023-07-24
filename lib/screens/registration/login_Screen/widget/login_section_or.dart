import 'package:flutter/material.dart';

class SectionOR extends StatelessWidget {
  const SectionOR({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Divider(
          thickness: 1,
          color: Colors.black,
        ),
        Text('Or'),
        Divider(
          color: Colors.black,
        )
      ],
    );
  }
}
