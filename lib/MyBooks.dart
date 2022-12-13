import 'package:flutter/material.dart';

import 'bookdata.dart';

Widget myBook(BookData book) {
  return Container(
    width: 100.0,
    margin: EdgeInsets.only(right: 0.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 100.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(book.bookCover),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 3.0,
        ),
        Text(book.bookName, style: const TextStyle(fontSize: 12.0)),
      ],
    ),
  );
}
