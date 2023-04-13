import 'package:flutter/material.dart';
import '../../../models/product.dart';
import '../../components/product_item.dart';
import '../../home/components/components/circle_container.dart';
import '../../home/components/components/product_filter_button.dart';

class ThriftyShoppingPage extends StatelessWidget {
  const ThriftyShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 120,
                child: Image.asset(
                  "assets/study/practice/kurly/images/kurly_banner_1.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 100,
                  child: ProductFilterButton(),
                ),
              )
            ],
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              // 4
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Stack(
                  children: [
                    ProductItem(product: productList[index]),
                    const Positioned(
                      bottom: 90,
                      right: 10,
                      child: CircleContainer(
                        iconPath:
                            "assets/study/practice/kurly/icons/shopping-cart.svg",
                      ),
                    )
                  ],
                );
              },
              childCount: productList.length,
            ),
          ),
        )
      ],
    );
  }
}
