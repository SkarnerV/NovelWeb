import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:novel/UI/Widgets/app_text.dart';
import 'package:novel/util/colors.dart';

class SideBar extends StatelessWidget {

  final List navigation;
  final String title;

  const SideBar({Key? key, required this.navigation,required this.title}) : super(key: key);
 
  
 
  @override
  Widget build(BuildContext context) {

    return 
    Drawer(
      
      child: ListView(
        padding: EdgeInsets.only(top:0),
        children: [
          SizedBox(
          height: 100,
          child:
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              ),
            child: AppText(text: title,color:AppColors.white,size:20),
          ))
        ],
  
    ),
    );
    
  }
}