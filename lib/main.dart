import 'package:flutter/material.dart';
import 'package:novel/cubit/app_cubit_logics.dart';
// import './login/login.dart';
import 'UI/Pages/main_page.dart';
import 'package:novel/cubit/app_cubit_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novel/cubit/app_cubits.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Novel Web', home: MainPage());
  }
}
