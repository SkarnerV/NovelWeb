import 'package:flutter/material.dart';
import 'package:novel/UI/Widgets/app_text.dart';
import 'package:novel/cubit/app_cubit_states.dart';
import 'package:novel/cubit/app_cubits.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../shelf/index.dart';
import '../util/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../services/user_service.dart';
import 'package:novel/UI/Pages/main_page.dart';
import 'package:novel/login/register_page.dart';

// Create a Form widget.
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  final TextEditingController usernameController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //   return Scaffold(
    //       appBar: AppBar(backgroundColor: AppColors.mainColor),
    //       body: Container(
    //           child: Column(
    //         children: [
    //           TextField(
    //             controller: usernameController,
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           TextField(
    //             controller: passwordController,
    //           ),
    //           ElevatedButton(
    //             onPressed: () async {
    //               await UserService.loginAccount(
    //                   usernameController.text, passwordController.text);
    //               Navigator.of(context).pushAndRemoveUntil(
    //                   MaterialPageRoute(
    //                       builder: (BuildContext context) => MainPage()),
    //                   (Route<dynamic> route) => false);
    //             },
    //             child: Text("Login"),
    //           ),
    //         ],
    //       )));

    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.mainColor, title: Text("User Login")),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.mainColor)),
                    onPressed: () async {
                      setState(() {
                        _isLoading = true;
                      });
                      await UserService.loginAccount(
                          usernameController.text, passwordController.text);
                      // UserService.LoginAccount(
                      //     "LollipopKit", "Lk123321");
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (BuildContext context) => MainPage()),
                          (Route<dynamic> route) => false);
                    },
                    child: const Text('Login'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (BuildContext context) => RegisterPage()),
                          (Route<dynamic> route) => false);
                      },
                      child: AppText(
                        text: "Create Account",
                        size: 12,
                        color: AppColors.subColor1,
                      ))
                ],
              )
            ],
          ),
        )));
  }
}
