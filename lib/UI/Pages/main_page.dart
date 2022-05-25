import 'package:flutter/material.dart';
import 'package:novel/UI/Pages/shelf.dart';
import '../../util/colors.dart';
import 'search.dart';
import 'profile.dart';
import 'home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:novel/login/login.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    print("check");
    print(sharedPreferences.getString("cookies"));
    if (sharedPreferences.getString("cookies") == null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
          (Route<dynamic> route) => false);
    }
  }

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
