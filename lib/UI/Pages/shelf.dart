import 'package:flutter/material.dart';
import 'package:novel/UI/Widgets/book_list.dart';

class ShelfPage extends StatefulWidget {


  const ShelfPage({Key? key}) : super(key: key);

  @override
  State<ShelfPage> createState() => _ShelfPageState();
}

class _ShelfPageState extends State<ShelfPage> {

   final List<Map<String,String>> books = [
     {
       "title":"book1",
       "img":"public/img/avatar.jpg",
       "progress":"10",

     },
     {
       "title":"book2",
       "img":"public/img/avatar.jpg",
       "progress":"10",

       
     },
     {
       "title":"book3",
       "img":"public/img/avatar.jpg",
       "progress":"100",
       
     },
     {
       "title":"book4",
       "img":"public/img/avatar.jpg",
       "progress":"1020",
       
     }];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.all(10),
        color: Colors.grey.withOpacity(0.09),
        child: BookList(books: books)
          


        ),
      
      
      );
    
  }
}
