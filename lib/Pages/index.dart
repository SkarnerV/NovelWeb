import 'package:flutter/material.dart';
import 'package:novel/Pages/shelf.dart';
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
    HomePage(),
    ShelfPage(),
    SearchPage(),
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
          backgroundColor: Color.fromARGB(255, 44, 156, 47),
          currentIndex: currentIndex,
          selectedItemColor: Color.fromARGB(136, 2, 50, 6),
          unselectedItemColor: Colors.white.withOpacity(0.2),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Shelf', icon: Icon(Icons.book)),
            BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: 'Profile', icon: Icon(Icons.perm_identity)),
          ]),
    );
  }
}
