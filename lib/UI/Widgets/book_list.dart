import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:novel/UI/Widgets/book_item.dart';

class BookList extends StatelessWidget {

  final List<Map<String, String>> books;

  BookList({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.09)
        ),
        child: 
      
          ListView.builder(
            itemCount: books.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index){
              return BookItem(title: books.elementAt(index)["title"]??'', 
              img: books.elementAt(index)["img"]??'',
              progress: books.elementAt(index)["progress"]??'',
              );
              
              
            },
          ),
      )

    );
    
  }
}