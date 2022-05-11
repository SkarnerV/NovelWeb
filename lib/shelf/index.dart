import 'package:flutter/material.dart';

class Shelf extends StatefulWidget {
  const Shelf({Key? key}) : super(key: key);

  @override
  ShelfState createState() {
    return ShelfState();
  }
}

class ShelfState extends State<Shelf> {
  // final _shelfKey = GlobalKey<ShelfState>();
  final List<String> items = List<String>.generate(10, (i) => 'Item $i');
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shelf',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Shelf'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
          ),
        ));
  }
}
