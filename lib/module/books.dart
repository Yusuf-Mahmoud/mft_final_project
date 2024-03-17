class Book {
  int bookid;
  String title;
  int authorid;
  int isbn;
  String genre;
  DateTime publishedDate;
  int copiesAvailable;
  int departmentId;

  Book({
    required this.bookid,
    required this.title,
    required this.authorid,
    required this.isbn,
    required this.genre,
    required this.publishedDate,
    required this.copiesAvailable,
    required this.departmentId,
  });
}
