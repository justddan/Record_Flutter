import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KkangCupertinoApp extends StatelessWidget {
  const KkangCupertinoApp({super.key});

  Widget platformUI() {
    // if (Platform.isIOS) {
    if (Platform.isAndroid) {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: const CupertinoThemeData(brightness: Brightness.light),
        home: CupertinoPageScaffold(
          navigationBar:
              const CupertinoNavigationBar(middle: Text("Cupertino Title")),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                child: const Text("click"),
                onPressed: () {},
              ),
              const Center(
                child: Text("HelloWorld"),
              )
            ],
          ),
        ),
      );
      // } else if (Platform.isAndroid) {
    } else if (Platform.isIOS) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Material Title"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: const Text("click"),
              ),
              const Center(
                child: Text("HelloWorld"),
              )
            ],
          ),
        ),
      );
    } else {
      return const Text(
        "unKnown Device",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return platformUI();
  }
}
