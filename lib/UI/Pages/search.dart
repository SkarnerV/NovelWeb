import 'package:flutter/material.dart';
import 'package:novel/UI/Widgets/nav_bar.dart';
import 'package:novel/util/colors.dart';
import '../Widgets/item_list.dart';

class SearchPage extends StatefulWidget{

  SearchPage({Key? key}) : super(key: key);

  @override

  _SearchPageState createState() => _SearchPageState();

}


class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {

  final List<String> nav = [
    "Recommend",
     "New", 
  ];

  final List<String> recoBookTitle = [
    "book1",
     "book2", 
      "book3", 
       "book4", 
        "book5", 
         "book6", 

  ];

  final List<String> recoBookImage = [
    "public/img/avatar.jpg",
     "public/img/avatar.jpg",
     "public/img/avatar.jpg",
     "public/img/avatar.jpg",
     "public/img/avatar.jpg",
     "public/img/avatar.jpg",
    
  ];

  
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Center(
                child: 
                TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      
                      onPressed: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          ))),
      body: Container(
        
        child: Column (
          children: [
            SizedBox(height: 10,),
            Container(
              height:50,
              width: double.maxFinite,
              child:
                  NavBar(nav: nav, controller: _tabController),
                ),
            Container(
              height: 200,
              width: double.maxFinite,
            child:
            TabBarView(
              
              controller:_tabController,
              children: [
                ItemImage(name: recoBookTitle, imgs: recoBookImage),
                ItemImage(name: recoBookTitle, imgs: recoBookImage),
            ],))
        ],)
      
      )
    
    );
  }
}
