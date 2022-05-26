import 'const.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

class UserService {
  static Future<void> loginAccount(String un, String pwd) async {
    var dio = Dio();
    var cookieJar = CookieJar();
    dio.interceptors.add(CookieManager(cookieJar));
    var apiUrl = "login?";
    var requresUrl = Const.baseUrl + apiUrl + 'un=' + un + '&' + 'pwd=' + pwd;

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Response res = await dio.post(requresUrl);

    var jsonRes = null;
    try {
      if (res.statusCode == 200) {
        jsonRes = CookieManager.getCookies(
            cookieJar.loadForRequest(Uri.parse(requresUrl)));
        if (jsonRes != null) {
          sharedPreferences.setString("cookies", jsonRes);
          print("login");
          print(sharedPreferences.get("cookies"));
        }
      }
    } on DioError catch (e) {
      print(e.toString());
    }
  }

  static void getShelf() async {
    var apiUrl = "shelf";
    var cookie = null;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    cookie = sharedPreferences.get("cookies");
    if (cookie != null) {
      // var head = allHead[0] + ";" + allHead[1].split(",")[2];
      http.Response res =
          await http.get(Uri.parse(Const.baseUrl + apiUrl), headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Cookie': '$cookie',
      });
      print(res.body);
    }
  }

  static void logoutAccount() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove("cookies");
  }

  static Future<String> getVerificationCode() async {
    var apiUrl = "captcha";
    http.Response res = await http.get(Uri.parse(Const.baseUrl + apiUrl));
    if (res.statusCode == 200) {
      var resBody = json.decode(res.body);
      return resBody['id'];
    } else {
      return "";
    }
  }
}
