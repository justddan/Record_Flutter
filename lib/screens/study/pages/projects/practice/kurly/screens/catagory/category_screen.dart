import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/grid_category_menu.dart';
import '../../models/list_category_menu.dart';
import '../catagory/components/extends_icon_text_card.dart';
import '../catagory/components/image_text_card.dart';
import '../components/custom_actions.dart';
import '../components/text_menu_card.dart';
import '../../theme.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("카테고리"),
        actions: const [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Divider(
              height: 12,
              color: Colors.grey[200],
              thickness: 12,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 60,
              child: TextMenuCard(
                title: "자주 사는 상품",
                icon: "assets/study/practice/kurly/icons/right-arrow.svg",
                textColor: kPrimaryColor,
                iconColor: kPrimaryColor,
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              height: 12,
              color: Colors.grey[200],
              thickness: 12,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                listCategoryMenuList.length,
                (index) => ExtendsIconTextCard(
                  item: listCategoryMenuList[index],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              height: 12,
              color: Colors.grey[200],
              thickness: 12,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                "컬리의 추천",
                style: textTheme().displayMedium,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ImageTextCard(
                    item: gridCategoryMenuList[index],
                  );
                },
                childCount: gridCategoryMenuList.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
