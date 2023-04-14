import 'package:flutter/material.dart';
import 'package:record_flutter/screens/study/pages/projects/introduction/kakao/introduction_kakao.dart';
import 'package:record_flutter/screens/study/pages/projects/introduction/login/introduction_login.dart';
import 'package:record_flutter/screens/study/pages/projects/introduction/profile/introduction_profile.dart';
import 'package:record_flutter/screens/study/pages/projects/introduction/recipe/introduction_recipe.dart';
import 'package:record_flutter/screens/study/pages/projects/introduction/shoppingcart/introduction_shoppingcart.dart';
import 'package:record_flutter/screens/study/pages/projects/introduction/store/introduction_store.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch08_3_stateless_widget/stateless_widget.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch08_4_stateful_widget/stateful_widget.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch08_6_key/key.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch09_1_asset/asset.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch09_2_text/text.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch09_3_image/image.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch09_4_icon/icon.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch09_5_gesture_detector/gesture_dectector.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch09_6_container/container.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch10_1_direction/direction.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch10_2_position/position.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch10_3_size/size.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch10_4_rest_arrangement/rest_arrangement.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch11_1_text_field/text_field.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch11_2_rest_user_input/rest_user_input.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch11_3_form/form.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch12_1_listview/listview.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch12_2_gridview/gridview.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch12_3_pageview/pageview.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch12_4_dialog/dialog.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch12_5_tab_bar/tab_bar.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch13_1_material_app/material_app.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch13_2_cupertino_app/cupertino_app.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch13_3_safearea/safearea.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch13_4_scaffold/scaffold.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch13_5_custom_scrollview/custom_scrollview.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_1_push_navigation/push_navigation.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_1_2_navigation_with_data/navigation_with_data.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_2_1_navigation2/navigation2.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch14_2_2_router_delegate/route_delegate.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch15_1_1_json/json.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch15_1_2_serializable/serializable.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch15_2_http/http.dart';
import 'package:record_flutter/screens/study/pages/projects/nomad/currency/nomad_currency.dart';
import 'package:record_flutter/screens/study/pages/projects/nomad/pomodoros/nomad_pomodoros.dart';
import 'package:record_flutter/screens/study/pages/projects/nomad/webtoon/nomad_webtoon.dart';
import 'package:record_flutter/screens/study/pages/projects/practice/carrot/practice_carrot.dart';
import 'package:record_flutter/screens/study/pages/projects/practice/kurly/practice_kurly.dart';
import 'package:record_flutter/screens/study/pages/projects/practice/play/practice_play.dart';

class Content {
  final int id;
  final String title;
  final Widget project;

  Content({
    required this.id,
    required this.title,
    required this.project,
  });
}

List<List<Content>> contents = [
  [
    Content(
      id: 0,
      title: "Currency",
      project: const NomadCurrency(),
    ),
    Content(
      id: 1,
      title: "Pomodoros",
      project: const NomadPomodoros(),
    ),
    Content(
      id: 2,
      title: "Webtoon",
      project: const NomadWebtoon(),
    ),
  ],
  [
    Content(
      id: 0,
      title: "Store",
      project: const IntroductionStore(),
    ),
    Content(
      id: 1,
      title: "Shopping Cart",
      project: const IntroductionShoppingCart(),
    ),
    Content(
      id: 2,
      title: "Recipe",
      project: const IntroductionRecipe(),
    ),
    Content(
      id: 3,
      title: "Profile",
      project: const IntroductionProfile(),
    ),
    Content(
      id: 4,
      title: "Login",
      project: const IntroductionLogin(),
    ),
    Content(
      id: 5,
      title: "Kakao",
      project: const IntroductionKakao(),
    ),
  ],
  [
    Content(
      id: 0,
      title: "Carrot",
      project: const PracticeCarrot(),
    ),
    Content(
      id: 1,
      title: "Kurly",
      project: const PracticeKurly(),
    ),
    Content(
      id: 2,
      title: "Play",
      project: const PracticePlay(),
    ),
    Content(
      id: 3,
      title: "GetX",
      project: const PracticePlay(),
    ),
  ],
  [
    Content(
      id: 0,
      title: "Stateless Widget",
      project: const KkangStateless(),
    ),
    Content(
      id: 1,
      title: "Stateful Widget",
      project: const KkangStateful(),
    ),
    Content(
      id: 2,
      title: "Key",
      project: const KkangKey(),
    ),
    Content(
      id: 3,
      title: "Asset",
      project: const KkangAsset(),
    ),
    Content(
      id: 4,
      title: "Text",
      project: const KkangText(),
    ),
    Content(
      id: 5,
      title: "Image",
      project: const KkangImage(),
    ),
    Content(
      id: 6,
      title: "Icon",
      project: const KkangIcon(),
    ),
    Content(
      id: 7,
      title: "Gesture Detector",
      project: const KkangGestureDetector(),
    ),
    Content(
      id: 8,
      title: "Container",
      project: const KkangContainer(),
    ),
    Content(
      id: 9,
      title: "Direction",
      project: const KkangDirection(),
    ),
    Content(
      id: 10,
      title: "Position",
      project: const KkangPosition(),
    ),
    Content(
      id: 11,
      title: "Size",
      project: const KkangSize(),
    ),
    Content(
      id: 12,
      title: "Rest Arrangement",
      project: const KkangRestArrangement(),
    ),
    Content(
      id: 13,
      title: "Text Field",
      project: const KkangTextField(),
    ),
    Content(
      id: 14,
      title: "Rest User Input",
      project: const KkangRestUserInput(),
    ),
    Content(
      id: 15,
      title: "Form",
      project: const KkangForm(),
    ),
    Content(
      id: 16,
      title: "ListView",
      project: const KkangListView(),
    ),
    Content(
      id: 17,
      title: "GridView",
      project: const KkangGridView(),
    ),
    Content(
      id: 18,
      title: "PageView",
      project: const KkangPageView(),
    ),
    Content(
      id: 19,
      title: "Dialog",
      project: const KkangDialog(),
    ),
    Content(
      id: 20,
      title: "TabBar",
      project: const KkangTabBar(),
    ),
    Content(
      id: 21,
      title: "Material App",
      project: const KkangMaterialApp(),
    ),
    Content(
      id: 22,
      title: "Cupertino App",
      project: const KkangCupertinoApp(),
    ),
    Content(
      id: 23,
      title: "SafeArea",
      project: const KkangSafeArea(),
    ),
    Content(
      id: 24,
      title: "Scaffold",
      project: const KkangScaffold(),
    ),
    Content(
      id: 25,
      title: "Custom ScrollView",
      project: const KkangCustomScrollView(),
    ),
    Content(
      id: 26,
      title: "Push Navigation",
      project: const KkangPushNavigation(),
    ),
    Content(
      id: 27,
      title: "Navigation With Data",
      project: const KkangNavigationWithData(),
    ),
    Content(
      id: 28,
      title: "Navigation 2.0",
      project: const KkangNavigation2(),
    ),
    Content(
      id: 29,
      title: "Route Delegate",
      project: const KkangRouteDelegate(),
    ),
    Content(
      id: 30,
      title: "JSON Parsing",
      project: const KkangJson(),
    ),
    Content(
      id: 31,
      title: "JSON Serializable",
      project: const KkangSerializable(),
    ),
    Content(
      id: 32,
      title: "Http Package",
      project: const KkangHttp(),
    ),
  ],
];
