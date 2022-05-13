import 'package:flutter/material.dart';
import 'package:novel/util/colors.dart';


class BookContentPage extends StatelessWidget {

  final String title;

  const BookContentPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: 
        AppBar(
          backgroundColor: AppColors.mainColor,
          title:Text(title),
        ),

    );

  }
}