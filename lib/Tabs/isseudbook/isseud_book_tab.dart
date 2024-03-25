import 'package:flutter/material.dart';
import 'package:mft_final_project/module/books.dart';

class IsseudBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

    return Container(
      child: Center(
        child: Text('Issued Book: ${myBook.title}'),
      ),
    );
  }
}
