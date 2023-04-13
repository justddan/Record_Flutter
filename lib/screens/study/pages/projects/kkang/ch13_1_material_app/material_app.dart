import 'package:flutter/material.dart';

class KkangMaterialApp extends StatelessWidget {
  const KkangMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.black,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Material App Test"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Button"),
              ),
              Checkbox(value: true, onChanged: (value) {}),
              const Text("Hello World"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
