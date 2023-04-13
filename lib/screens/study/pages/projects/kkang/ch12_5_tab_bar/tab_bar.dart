import 'package:flutter/material.dart';

class KkangTabBar extends StatefulWidget {
  const KkangTabBar({super.key});

  @override
  State<KkangTabBar> createState() => _KkangTabBarState();
}

class _KkangTabBarState extends State<KkangTabBar>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Test"),
          bottom: TabBar(
            controller: controller,
            tabs: const <Widget>[
              Tab(
                text: "One",
              ),
              Tab(
                text: "Two",
              ),
              Tab(
                text: "Three",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const <Widget>[
            Center(
              child: Text(
                "One Screen",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                "Two Screen",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                "Three Screen",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
