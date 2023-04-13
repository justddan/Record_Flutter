import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        _buildHeaderAvatar(),
        const SizedBox(
          width: 20,
        ),
        _buildHeaderProfile(),
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return const SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage:
            AssetImage("assets/study/introduction/profile/avatar.png"),
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "GetinThere",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "프로그래머/작가/강사",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "데어 프로그래밍",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
