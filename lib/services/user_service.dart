import 'const.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

class UserService {
  static void LoginAccount(String un, String pwd) async {
    var apiUrl = "login?";
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    http.Response res = await http.post(
        Uri.parse(Const.baseUrl + apiUrl + 'un=' + un + '&' + 'pwd=' + pwd));

    var jsonRes = null;
    try {
      if (res.statusCode == 200) {
        jsonRes = res.headers['set-cookie'];
        if (jsonRes != null) {
          sharedPreferences.setString("cookies", jsonRes);
          print(sharedPreferences.get("cookies"));
        }
      }
    } catch (e) {
      print(res.statusCode);
    }
  }

  static void getShelf() async {
    var apiUrl = "shelf";
    var cookie = null;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    cookie = sharedPreferences.get("cookies");
    if (cookie != null) {
      http.Response res =
          await http.get(Uri.parse(Const.baseUrl + apiUrl), headers: {
        'Content-Type': 'application/json',
        'Cookie': '$cookie',
      });
      print(res.statusCode);
      print(cookie);
    }
  }
}
