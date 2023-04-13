import 'package:flutter/material.dart';
import '../../constants.dart';
import '../components/custom_actions.dart';
import '../search/components/default_search_field.dart';

class SearchScreen extends StatelessWidget {
  static List searchKeyword = ["불고기", "닭갈비", "삼겹살", "갈비곰탕", "생새우살"];

  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("검색"),
        actions: const [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          const DefaultSearchField(),
          const SizedBox(height: 20),
          const Text("인기 검색어", style: TextStyle(color: kTextColor)),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            height: 400,
            child: ListView.separated(
              itemBuilder: (context, index) => Container(
                child: SizedBox(
                  height: 50,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      searchKeyword[index],
                      style: const TextStyle(
                        color: kPrimaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const Divider(
                thickness: 0.5,
                height: 0,
              ),
              itemCount: searchKeyword.length,
            ),
          )
        ]),
      ),
    );
  }
}
