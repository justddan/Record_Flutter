import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../string_extensions.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 500,
          child: Image.network(
            product.imageUrl ?? "",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                product.title ?? "",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text("상세보기 화면입니다.",
                  style: TextStyle(fontSize: 16, color: kTextColor)),
              const SizedBox(height: 16),
              Text(
                "${product.price.toString().numberFormat()}원",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "로그인 후, 적립혜택이 제공됩니다.",
                style: TextStyle(fontSize: 16, color: kPrimaryColor),
              )
            ],
          ),
        )
      ],
    );
  }
}
