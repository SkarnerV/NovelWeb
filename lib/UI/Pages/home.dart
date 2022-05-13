import 'package:flutter/material.dart';
import 'package:novel/UI/Pages/profile.dart';
import 'package:novel/UI/Popups/side_bar.dart';
import 'package:novel/UI/Widgets/app_text.dart';
import '../../util/colors.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: SideBar(navigation: [],title:'Novel'),
      body: Container(
          margin: const EdgeInsets.only(left: 30, right: 30, top: 45),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                InkWell(
                onTap: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                child:
                  const Icon(Icons.menu)
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  child:
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(120),
                        color: AppColors.mainColor),
                    child: CircleAvatar(
                      
                      radius: 10,
                      backgroundImage: AssetImage('public/img/avatar.jpg'),
                    ))
                )],
            ),
            const SizedBox(
              height: 20,
            ),
            AppText(text: "Discover"),
          ])),
    );
  }
}
