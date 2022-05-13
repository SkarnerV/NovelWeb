import 'package:flutter/material.dart';
// import './login/login.dart';
import 'UI/Pages/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Novel Web',
      home: MainPage(),
    );
  }
}
