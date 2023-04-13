import 'package:flutter/material.dart';
import '../../../models/product.dart';
import '../../components/image_container.dart';
import './product_detail.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ImageContainer(
              borderRadius: 10.0,
              imageUrl: product.urlToImage,
              width: 115,
              height: 115),
          const SizedBox(
            width: 16.0,
          ),
          ProductDetail(product: product),
        ],
      ),
    );
  }
}
