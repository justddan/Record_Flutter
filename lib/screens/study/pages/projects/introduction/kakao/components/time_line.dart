import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TimeLine extends StatelessWidget {
  final String time;

  const TimeLine({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFF9cafbe),
      ),
      child: Text(
        time,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
