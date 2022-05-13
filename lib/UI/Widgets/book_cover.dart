import 'package:flutter/material.dart';
import 'package:novel/UI/Pages/book_page.dart';

class BookCover extends StatelessWidget {

  final String title;
  final String img;
  
  const BookCover({Key? key,required this.title,required this.img}) : super(key: key);

  


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(left:10,right:10,top:10),
      child: Column(
        children: [
        Center(
          child:
        InkWell(
        onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => BookContentPage(title: title)),
          );
        },
        child:
          Container(
          width:100,
          height:150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover
              ),
          )
        ),),),
        
        Text(title),
      ]),
    );
    
  }
}