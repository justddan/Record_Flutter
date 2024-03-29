import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../recommend/components/card_product_item.dart';
import '../recommend/components/stack_product_item.dart';
import '../../theme.dart';

class RecommendScreen extends StatelessWidget {
  const RecommendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("추천"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "베이커리 인기 급상승 랭킹",
              style: textTheme().displayLarge,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => StackProductItem(
                  width: 160,
                  item: productList[index],
                  number: index + 1,
                ),
                itemCount: productList.length,
              )),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "후기가 좋은 상품",
              style: textTheme().displayLarge,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 360,
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 40),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                width: 320,
                child: CardProductItem(item: productList[index]),
              ),
              itemCount: productList.length,
            ),
          )
        ],
      ),
    );
  }
}
