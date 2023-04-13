import 'package:flutter/material.dart';
import '../../constants.dart';
import '../components/custom_actions.dart';
import '../home/components/benefit_page.dart';
import '../home/components/kurly_page.dart';
import '../home/components/new_product_page.dart';
import '../home/components/thrifty_shopping_page.dart';
import '../../theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = ["컬리추천", "신상품", "금주혜택", "알뜰쇼핑"];
    return DefaultTabController(
      initialIndex: 0,
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Kurly"),
          actions: const [
            CustomActions(),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(42),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.3, color: Colors.grey),
                ),
                color: Colors.white,
              ),
              child: TabBar(
                tabs: List.generate(
                  categories.length,
                  (index) => Tab(
                    text: categories[index],
                  ),
                ),
                labelColor: kPrimaryColor,
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().displayMedium?.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: kPrimaryColor),
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(children: [
          KurlyPage(),
          NewProductPage(),
          BenefitPage(),
          ThriftyShoppingPage(),
        ]),
      ),
    );
  }
}
