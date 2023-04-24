import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Stream<int> streamFun() async* {
  for (int i = 0; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

class KkangFutureProvider extends StatelessWidget {
  const KkangFutureProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Future/Stream Provider Test"),
        ),
        body: MultiProvider(
          providers: [
            FutureProvider(
              create: (context) => Future.delayed(
                Duration(seconds: 4),
                () => "world",
              ),
              initialData: "hello",
            ),
            StreamProvider<int>(
              create: (context) => streamFun(),
              initialData: 0,
            ),
          ],
          child: KkangFutureProviderSubWidget(),
        ),
      ),
    );
  }
}

class KkangFutureProviderSubWidget extends StatelessWidget {
  const KkangFutureProviderSubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var futureState = Provider.of<String>(context);
    var streamState = Provider.of<int>(context);
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "future : $futureState",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "stream : $streamState",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
