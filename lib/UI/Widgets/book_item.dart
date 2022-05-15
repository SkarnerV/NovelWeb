import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:novel/UI/Pages/book_page.dart';
import 'package:novel/UI/Widgets/app_text.dart';

class BookItem extends StatelessWidget {

  final String title;
  final String img;
  final String progress;


  const BookItem({Key? key,required this.title, required this.img, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin:EdgeInsets.all(10),
      child: 
        InkWell(
          onTap: () {
            Navigator.push(context, 
            MaterialPageRoute(
              builder:(context) => BookContentPage(title: title) )
            
            );
            
          },
          child:
          Row(children: [
            Container(
              width: 75,
              height:100,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(img),
                fit:BoxFit.cover
               )
              ),
              
             
            ),
            SizedBox(width:10),
            Column(
              children: [
              Container(
              width: 100,
              child: AppText(text: title),
              ),

              Container(
              width: 100,
              child: AppText(text: progress),
              ),


              ],
            )
           
            

          ],)
          )
    
    );
    
  }
}