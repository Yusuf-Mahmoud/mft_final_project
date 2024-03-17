import 'package:flutter/material.dart';
import 'package:mft_final_project/module/books.dart';

class BookTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Book> book = [
      Book(
          bookid: 1,
          title: 'مقدمة في المحاسبه',
          authorid: 1,
          isbn: 1234567891234,
          genre: 'Accounting',
          publishedDate: DateTime(2020, 10, 10),
          copiesAvailable: 5,
          departmentId: 1),
      Book(
          bookid: 2,
          title: 'مقدمة في النظم',
          authorid: 2,
          isbn: 1234567891235,
          genre: 'Systems Analysis',
          publishedDate: DateTime(2020, 10, 10),
          copiesAvailable: 2,
          departmentId: 2),
      Book(
          bookid: 3,
          title: 'مقدمة في الادارة',
          authorid: 3,
          isbn: 1234567891236,
          genre: 'Management',
          publishedDate: DateTime(2020, 10, 10),
          copiesAvailable: 3,
          departmentId: 3),
      Book(
          bookid: 4,
          title: 'مقدمة في الاقتصاد',
          authorid: 5,
          isbn: 1234567891237,
          genre: 'Economics',
          publishedDate: DateTime(2020, 10, 10),
          copiesAvailable: 10,
          departmentId: 4),
    ];
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: book.length,
            itemBuilder: (context, index) {
              Color rowColor =
                  index.isEven ? Colors.grey[200] ?? Colors.grey : Colors.white;
              return Container(
                color: rowColor,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(book[index].title),
                    Text(book[index].genre),
                    Text(book[index].publishedDate.toString()),
                    Text(book[index].copiesAvailable.toString()),
                    Text(book[index].isbn.toString()),
                    Text(book[index].departmentId.toString()),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
