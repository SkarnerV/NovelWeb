import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  final String name;
  final String content;

  const BookPage({
    Key? key,
    this.name = '',
    this.content = '',
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(child: Text(content)),
    );
  }
}
