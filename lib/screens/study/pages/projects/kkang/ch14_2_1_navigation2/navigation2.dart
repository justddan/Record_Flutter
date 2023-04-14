import 'package:flutter/material.dart';

class KkangNavigation2 extends StatelessWidget {
  const KkangNavigation2({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDeppLink = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navigation2 Test",
      home: Navigator(
        pages: [
          const MaterialPage(
            child: OneScreen(),
          ),
          if (isDeppLink) const MaterialPage(child: TwoScreen())
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OneScreen"),
      ),
      body: Container(
        color: Colors.cyan,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "OneScreen",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TwoScreen extends StatelessWidget {
  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TwoScreen"),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "TwoScreen",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Pop"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
