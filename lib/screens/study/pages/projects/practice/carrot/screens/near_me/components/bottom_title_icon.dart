import 'package:flutter/material.dart';

class BottomTitleIcon extends StatelessWidget {
  final IconData iconData;
  final String title;

  const BottomTitleIcon({
    super.key,
    required this.iconData,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Icon(iconData, size: 30),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
