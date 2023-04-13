import 'package:flutter/material.dart';
import '../components/profile_card.dart';
import '../models/user.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("친구", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ProfileCard(user: me),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "친구",
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "${friends.length}",
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: List.generate(
              friends.length,
              (index) => ProfileCard(user: friends[index]),
            ),
          ))
        ],
      ),
    );
  }
}
