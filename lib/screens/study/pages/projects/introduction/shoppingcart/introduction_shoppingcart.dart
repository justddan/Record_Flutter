import 'package:flutter/material.dart';
import './components/shoppingcart_detail.dart';
import './components/shoppingcart_header.dart';
import './theme.dart';

class IntroductionShoppingCart extends StatelessWidget {
  const IntroductionShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: const [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
