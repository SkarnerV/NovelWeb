import 'package:flutter/material.dart';


class NavBar extends StatelessWidget {
  final List<String> nav;
  final TabController controller;
  
  NavBar({Key? key, required this.nav, required this.controller}) : super(key: key);

  // tabMakder() {
  //   List<Tab> tabs = List();
  //   for(var i = 0; i < nav.length;i++) {
  //     tabs.add(Tab(text:nav.elementAt(i)));
  //   }
  //   return tabs;
  // }


  @override
  Widget build(BuildContext context) {

    return TabBar(
        labelColor: Colors.black,
        isScrollable: true,
        controller: controller,
        labelStyle: TextStyle(fontSize: 20),
        unselectedLabelStyle: TextStyle(fontSize: 15),
        indicatorColor: Colors.transparent,
        tabs:[
          for(var tabText in nav)
              Tab(text:tabText)
        ]
        
     
    );
    
  }
}