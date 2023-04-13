class GridCategoryMenu {
  String title;
  String image;

  GridCategoryMenu({required this.title, required this.image});
}

// 샘플 데이터
List gridCategoryMenuList = [
  GridCategoryMenu(
      title: "식단관리", image: "assets/study/practice/kurly/images/food_0.png"),
  GridCategoryMenu(
      title: "간편한 아침 식사",
      image: "assets/study/practice/kurly/images/food_1.png"),
  GridCategoryMenu(
      title: "재구매 BEST",
      image: "assets/study/practice/kurly/images/food_2.png"),
  GridCategoryMenu(
      title: "베이커리", image: "assets/study/practice/kurly/images/food_3.png"),
  GridCategoryMenu(
      title: "컬리마트", image: "assets/study/practice/kurly/images/food_4.png"),
  GridCategoryMenu(
      title: "반찬가게", image: "assets/study/practice/kurly/images/food_5.png"),
];
