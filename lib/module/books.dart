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

  void borrowBook(int numberOfCopiesBorrowed) {
    if (numberOfCopiesBorrowed > 0 &&
        numberOfCopiesBorrowed <= copiesAvailable) {
      copiesAvailable -= numberOfCopiesBorrowed;
      print('$numberOfCopiesBorrowed copies of "$title" have been borrowed.');
    } else {
      print('Not enough copies available for borrowing.');
    }
  }
}

void main() {
  Book myBook = Book(
    bookid: 1,
    title: 'Sample Book',
    authorid: 123,
    isbn: 9780123456789,
    genre: 'Fiction',
    publishedDate: DateTime(2022, 1, 1),
    copiesAvailable: 10,
    departmentId: 456,
  );

  myBook.borrowBook(3);
}
