import 'package:flutter/material.dart';

class ShelfPage extends StatefulWidget {
  const ShelfPage({Key? key}) : super(key: key);

  @override
  State<ShelfPage> createState() => _ShelfPageState();
}

class _ShelfPageState extends State<ShelfPage> {
  @override
  Widget build(BuildContext context) {
    return Text('Shelf');
  }
}
