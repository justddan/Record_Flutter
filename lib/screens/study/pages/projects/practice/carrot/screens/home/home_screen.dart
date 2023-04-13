import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../components/appbar_preferred_size.dart';
import './components/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text("좌동"),
            SizedBox(
              width: 4.0,
            ),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15.0,
            ),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(CupertinoIcons.search), onPressed: () {}),
          IconButton(
              icon: const Icon(CupertinoIcons.list_dash), onPressed: () {}),
          IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {}),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          height: 0,
          indent: 16,
          endIndent: 16,
          color: Colors.grey,
        ),
        itemBuilder: (context, index) {
          return ProductItem(
            product: productList[index],
          );
        },
        itemCount: productList.length,
      ),
    );
  }
}
