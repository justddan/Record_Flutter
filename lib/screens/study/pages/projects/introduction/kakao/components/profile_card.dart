import 'package:flutter/material.dart';
import '../models/user.dart';
import '../screens/profile_screen.dart';

class ProfileCard extends StatelessWidget {
  final User user;

  const ProfileCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileScreen(user: user),
            ),
          );
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(user.backgroundImage),
          ),
          title: Text(
            user.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            user.intro,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
