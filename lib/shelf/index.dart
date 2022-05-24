import 'package:flutter/material.dart';
import '../UI/Widgets/item/bookCover.dart';
import '../UI/Widgets/item/bookPage.dart';

class Shelf extends StatelessWidget {
  Shelf({Key? key}) : super(key: key);

  final List<String> items = List<String>.generate(10, (i) => 'Book ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shelf',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Shelf'),
            leading: IconButton(
              icon: const Icon(Icons.perm_identity),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookPage(
                                name: items[index],
                                content: "Dudadw",
                              )),
                    );
                  },
                  child: BookCover(
                    name: items[index],
                    image: "public/img/avatar.jpg",
                  ));
            },
          ),
        ));
  }
}
