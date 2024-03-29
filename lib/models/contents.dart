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
import 'package:record_flutter/screens/study/pages/projects/kkang/ch15_3_dio/dio.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch16_1_future/future.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch16_2_await/await.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch16_3_stream/stream.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch16_4_stream_etc/stream_etc.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch17_isolate/isolate.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch18_1_1_parent_state/parent_state.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch18_1_2_grandparent_state/grandparent_state.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch18_2_inherited_state/inherited_state.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch19_1_provider/provider.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch19_2_1_change_notifier_provider/change_notifier_provider.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch19_2_2_multi_provider/multi_provider.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch19_2_3_proxy_provider/proxy_provider.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch19_2_4_future_provider/future_provider.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch19_3_1_consumer/consumer.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch19_3_2_selector/selector.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch20_2_bloc/bloc.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch20_3_1_various_bloc/various_bloc.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch20_3_2_bloc_consumer/bloc_consumer.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch20_4_bloc_cubit/bloc_cubit.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch21_1_getx/getx.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch21_2_getx_rx/getx_rx.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch22_2_message_channel/message_channel.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch22_3_method_channel/method_channel.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch22_4_event_channel/event_channel.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch23_1_geolocator/geolocator.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch23_2_image_picker/image_picker.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch23_3_shared_preferences/shared_preferences.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch23_4_sqflite/sqflite.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch24_2_firebase_auth/firebase_auth.dart';
import 'package:record_flutter/screens/study/pages/projects/kkang/ch25_2_firebase_store/firebase_store.dart';
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
    Content(
      id: 33,
      title: "Dio Package",
      project: const KkangDio(),
    ),
    Content(
      id: 34,
      title: "Future",
      project: const KkangFuture(),
    ),
    Content(
      id: 35,
      title: "Await",
      project: const KkangAwait(),
    ),
    Content(
      id: 36,
      title: "Stream",
      project: const KkangStream(),
    ),
    Content(
      id: 37,
      title: "Stream etc",
      project: const KkangStreamEtc(),
    ),
    Content(
      id: 38,
      title: "Isolate",
      project: const KkangIsolate(),
    ),
    Content(
      id: 39,
      title: "Parent State",
      project: const KkangParentState(),
    ),
    Content(
      id: 40,
      title: "Grandparent State",
      project: const KkangGrandparentState(),
    ),
    Content(
      id: 41,
      title: "Inherited State",
      project: const KkangInheritedState(),
    ),
    Content(
      id: 42,
      title: "Provider",
      project: const KkangProvider(),
    ),
    Content(
      id: 43,
      title: "Change Notifier Provider",
      project: const KkangChangeNotifierProvider(),
    ),
    Content(
      id: 44,
      title: "Multi Provider",
      project: const KkangMultiProvider(),
    ),
    Content(
      id: 45,
      title: "Proxy Provider",
      project: const KkangProxyProvider(),
    ),
    Content(
      id: 46,
      title: "Future/Stream Provider",
      project: const KkangFutureProvider(),
    ),
    Content(
      id: 47,
      title: "Consumer",
      project: const KkangConsumer(),
    ),
    Content(
      id: 48,
      title: "Selector",
      project: const KkangSelector(),
    ),
    Content(
      id: 49,
      title: "Bloc",
      project: const KkangBloc(),
    ),
    Content(
      id: 50,
      title: "Various Bloc",
      project: const KkangVariousBloc(),
    ),
    Content(
      id: 51,
      title: "Bloc Consumer/Repository",
      project: const KkangBlocConsumer(),
    ),
    Content(
      id: 52,
      title: "Bloc Cubit",
      project: const KkangBlocCubit(),
    ),
    Content(
      id: 53,
      title: "GetX",
      project: const KkangGetX(),
    ),
    Content(
      id: 54,
      title: "GetX Rx",
      project: const KkangGetXRx(),
    ),
    Content(
      id: 55,
      title: "Message Channel",
      project: const KkangMessageChannel(),
    ),
    Content(
      id: 56,
      title: "Method Channel",
      project: const KkangMethodChannel(),
    ),
    Content(
      id: 57,
      title: "Event Channel",
      project: const KkangEventChannel(),
    ),
    Content(
      id: 58,
      title: "Geolocator",
      project: const KkangGeolocator(),
    ),
    Content(
      id: 59,
      title: "Image Picker",
      project: const KkangImagePicker(),
    ),
    Content(
      id: 60,
      title: "Shared Preferences",
      project: const KkangSharedPreferences(),
    ),
    Content(
      id: 61,
      title: "Sqflite",
      project: const KkangSqflite(),
    ),
    Content(
      id: 62,
      title: "Firebase Auth",
      project: const KkangFirebaseAuth(),
    ),
    Content(
      id: 63,
      title: "Firebase Store/Storage",
      project: const KkangFirebaseStore(),
    ),
  ],
];
