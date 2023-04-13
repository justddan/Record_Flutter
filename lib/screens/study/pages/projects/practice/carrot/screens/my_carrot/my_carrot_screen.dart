import 'package:flutter/material.dart';
import '../../models/icon_menu.dart';
import '../components/appbar_preferred_size.dart';
import './components/card_icon_menu.dart';
import './components/my_carrot_header.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("나의 당근"),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          const MyCarrotHeader(),
          const SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenuList: iconMenu1),
          const SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenuList: iconMenu2),
          const SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }
}
