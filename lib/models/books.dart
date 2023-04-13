class Book {
  final int id;
  final String title;
  final String imgPath;

  Book({required this.id, required this.title, required this.imgPath});
}

List<Book> books = [
  Book(
    id: 0,
    title: "노마드 코더",
    imgPath: "assets/books/nomad.jpeg",
  ),
  Book(
    id: 1,
    title: "모두가 할 수 있는 플러터 UI 입문",
    imgPath: "assets/books/introduction.jpg",
  ),
  Book(
    id: 2,
    title: "모두가 할 수 있는 플러터 UI 실전",
    imgPath: "assets/books/practice.jpg",
  ),
  Book(
    id: 3,
    title: "깡쌤의 플러터 & 다트 프로그래밍",
    imgPath: "assets/books/kkang.jpg",
  ),
];
