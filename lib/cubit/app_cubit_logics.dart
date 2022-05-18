import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:novel/UI/Pages/index.dart';
import 'package:novel/cubit/app_cubit_states.dart';
import 'package:novel/cubit/app_cubits.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novel/login/login.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is LoginState) {
          return Login();
        } else if (state is HomeState) {
          return MainPage();
        } else {
          return Container();
        }
      }),
    );
  }
}
