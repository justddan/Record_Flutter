import 'package:flutter/material.dart';

class KkangAwait extends StatelessWidget {
  const KkangAwait({super.key});

  @override
  Widget build(BuildContext context) {
    Future<int> funA() {
      return Future.delayed(const Duration(seconds: 3), () {
        return 10;
      });
    }

    Future<int> funB(int arg) {
      return Future.delayed(const Duration(seconds: 2), () {
        return arg * arg;
      });
    }

    Future<int> calFun() async {
      int aResult = await funA();
      int bResult = await funB(aResult);
      return bResult;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Await Test",
          ),
        ),
        body: Center(
          child: FutureBuilder(
            future: calFun(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Center(
                  child: Text(
                    "${snapshot.data}",
                    style: const TextStyle(color: Colors.black, fontSize: 30),
                  ),
                );
              }
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: CircularProgressIndicator(),
                    ),
                    Text(
                      "waiting...",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
