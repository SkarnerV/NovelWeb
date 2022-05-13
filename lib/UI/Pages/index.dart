import 'package:flutter/material.dart';
import 'package:novel/UI/Pages/shelf.dart';
import '../../util/colors.dart';
import 'search.dart';
import 'profile.dart';
import 'home.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    SearchPage(),
    ShelfPage(),
    ProfilePage(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          backgroundColor: AppColors.mainColor,
          currentIndex: currentIndex,
          selectedItemColor: AppColors.subColor1,
          unselectedItemColor: AppColors.whiteOpac(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Shelf', icon: Icon(Icons.book)),
            BottomNavigationBarItem(
                label: 'Profile', icon: Icon(Icons.perm_identity)),
          ]),
    );
  }
}
