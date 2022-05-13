import 'package:flutter/material.dart';
import 'package:novel/util/colors.dart';
import 'book_cover.dart';

class ItemImage extends StatelessWidget {

  List<String> imgs;
  List<String> name;

  ItemImage({Key? key, required this.imgs, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 10,right:10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.09)
        ),
        padding: const EdgeInsets.only(left:10,right:10),
        child: Center(
          child: 
          ListView.builder(
          padding: const EdgeInsets.only(left:10,right:10),
          scrollDirection: Axis.horizontal,
          itemCount: imgs.length,
          itemBuilder: (context, index) {
            return BookCover(title: name.elementAt(index), img: imgs.elementAt(index));
          }
          
          ))
      )
    );
    
  }
}