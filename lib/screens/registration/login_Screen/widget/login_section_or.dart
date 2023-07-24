import 'package:flutter/material.dart';

class SectionOR extends StatelessWidget {
  const SectionOR({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Divider(
            indent: 50,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 19),
        Text('Or'),
        SizedBox(width: 19),
        Expanded(
          child: Divider(
            endIndent: 50,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
