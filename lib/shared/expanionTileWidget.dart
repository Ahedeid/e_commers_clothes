import 'package:flutter/material.dart';


class ExpanionTileWidget extends StatelessWidget {
  const ExpanionTileWidget({
    super.key,
    required this.title,
    this.text = '',
    this.collapsedBackgroundColor = const Color(0xFFAAABAE),
  });

  final String title;
  final String text;
  final Color collapsedBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      collapsedBackgroundColor: collapsedBackgroundColor,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
