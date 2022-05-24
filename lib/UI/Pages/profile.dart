import 'package:flutter/material.dart';
import 'package:novel/UI/Pages/setting_page.dart';
import 'package:novel/login/login.dart';
import 'package:novel/util/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:novel/services/user_service.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Expanded(
              child: Container(),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingPage()),
                );
              },
              child: Icon(Icons.settings),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.09)),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Text("111");
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('public/img/avatar.jpg'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(Icons.chevron_right_outlined)
                ],
              )),
        ),
        ElevatedButton(
          onPressed: () {
            UserService.getShelf();
          },
          child: Text("getShelf", style: TextStyle(color: Colors.white)),
        ),
      ]),
    );
  }
}
