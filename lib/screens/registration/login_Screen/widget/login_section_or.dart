import 'package:flutter/material.dart';

class SectionOR extends StatelessWidget {
  const SectionOR({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Divider(
          indent: 50,
          endIndent: 120,
          height: 5,
          thickness: 5,
          color: Colors.black,
        ),
        Text('Or'),
        Divider(
          indent: 20,
          endIndent: 70,
          color: Colors.black,
        )
      ],
    );
  }
}
