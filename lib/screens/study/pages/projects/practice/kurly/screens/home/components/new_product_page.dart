import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../models/product.dart';
import '../../components/product_item.dart';
import '../../home/components/components/circle_container.dart';
import '../../home/components/components/product_filter_button.dart';

class NewProductPage extends StatelessWidget {
  const NewProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverRefreshControl(
            onRefresh: () {
              return Future<void>.delayed(const Duration(seconds: 1));
            },
          ),
          const SliverAppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              SizedBox(
                width: 100,
                child: ProductFilterButton(),
              )
            ],
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Stack(
                  children: [
                    ProductItem(
                      product: productList[index],
                    ),
                    const Positioned(
                      bottom: 90,
                      right: 10,
                      child: CircleContainer(
                        iconPath:
                            "assets/study/practice/kurly/icons/shopping-cart.svg",
                      ),
                    ),
                  ],
                );
              },
              childCount: productList.length,
            ),
          )
        ],
      ),
    );
  }
}
