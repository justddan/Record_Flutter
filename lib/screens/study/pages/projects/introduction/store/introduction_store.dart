import 'package:flutter/material.dart';

class IntroductionStore extends StatelessWidget {
  const IntroductionStore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: const [
                  Text(
                    "Woman",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Kids",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Shoes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Bag",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Image.asset("assets/study/introduction/store/bag.jpeg",
                  fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 2,
            ),
            Expanded(
              child: Image.asset("assets/study/introduction/store/cloth.jpeg",
                  fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
