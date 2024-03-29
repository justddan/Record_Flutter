import 'package:flutter/material.dart';
import '../../../models/product.dart';
import '../../components/product_item.dart';

class CardProductItem extends StatelessWidget {
  final Product item;

  const CardProductItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ProductItem(
              product: item,
              lineChange: true,
              textContainerHeight: 50,
            ),
          ),
          Container(
            height: 80,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1.0,
                  color: Color(0xFFF5F5F5),
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "이렇게 치즈가 가득한 돈까스를 집에서 먹으니 좋네요. 에어프리어에 돌리니 간편하고 맛있어요",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
