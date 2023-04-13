import 'package:flutter/material.dart';
import './components/profile_buttons.dart';
import './components/profile_count_info.dart';
import './components/profile_drawer.dart';
import './components/profile_header.dart';
import './components/profile_tab.dart';
import './theme.dart';

class IntroductionProfile extends StatelessWidget {
  const IntroductionProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          ProfileHeader(),
          SizedBox(
            height: 20,
          ),
          ProfileCountInfo(),
          SizedBox(
            height: 20,
          ),
          ProfileButtons(),
          Expanded(
            child: ProfileTab(),
          ),
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      leading: const Icon(
        Icons.arrow_back_ios,
      ),
      title: const Text(
        "Profile",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      centerTitle: true,
    );
  }
}
