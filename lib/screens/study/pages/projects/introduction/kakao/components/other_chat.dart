import 'package:flutter/material.dart';
import '../models/user.dart';

class OtherChat extends StatelessWidget {
  final String name;
  final String text;
  final String time;

  const OtherChat({
    super.key,
    required this.name,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(friends[0].backgroundImage),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                  child: Text(text),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5),
          Text(
            time,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
