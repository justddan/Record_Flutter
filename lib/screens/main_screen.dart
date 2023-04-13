import 'package:flutter/material.dart';
import 'package:record_flutter/models/nav_item.dart';
import 'package:record_flutter/screens/project/project_screen.dart';
import 'package:record_flutter/screens/record/record_page.dart';
import 'package:record_flutter/screens/study/study_screen.dart';

class MainScreen extends StatefulWidget {
  static String routeName = "/main_screen";
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List pages = [
    const StudyScreen(),
    const ProjectScreen(),
    const RecordScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.amber[300],
        unselectedItemColor: Colors.white,
        selectedFontSize: 12.0,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: List.generate(
          navItems.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(navItems[index].icon),
            label: navItems[index].label,
          ),
        ),
      ),
    );
  }
}
