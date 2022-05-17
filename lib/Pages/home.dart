import 'package:flutter/material.dart';
import 'package:novel/UI/Widgets/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.only(left: 30, right: 30, top: 45),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const Icon(Icons.menu),
                Expanded(child: Container()),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(120),
                        color: Colors.grey.withOpacity(0.5)),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundImage: AssetImage('public/img/avatar.jpg'),
                    ))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            AppText(text: "Discover"),
          ])),
    );
  }
}
