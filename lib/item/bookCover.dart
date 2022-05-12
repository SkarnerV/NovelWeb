import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  // BookCover({Key? key}) : super(key: key);
  final String name;
  final String image;

  const BookCover({
    Key? key,
    this.name = '',
    this.image = '',
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        SizedBox(
            width: 100.0,
            height: 100.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image),
            )),
        Text(name),
      ]),
    );
  }
}
