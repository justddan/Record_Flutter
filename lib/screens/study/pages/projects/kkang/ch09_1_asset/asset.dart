import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KkangAsset extends StatelessWidget {
  const KkangAsset({super.key});

  Future<String> useRootBundle() async {
    return await rootBundle
        .loadString("assets/study/kkang/ch9_1_asset/assets/text/my_text.txt");
  }

  Future<String> useDefaultAssetBundle(BuildContext context) async {
    return await DefaultAssetBundle.of(context)
        .loadString("assets/study/kkang/ch9_1_asset/assets/text/my_text.txt");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Asset Test"),
        ),
        body: Column(
          children: [
            Image.asset("assets/study/kkang/ch9_1_asset/images/icon.jpg"),
            Image.asset("assets/study/kkang/ch9_1_asset/images/icon/user.png"),
            FutureBuilder(
              future: useRootBundle(),
              builder: (context, snapshot) {
                return Text("rootBundle : ${snapshot.data}");
              },
            ),
            FutureBuilder(
              future: useDefaultAssetBundle(context),
              builder: (context, snapshot) {
                return Text("rootBundle : ${snapshot.data}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
