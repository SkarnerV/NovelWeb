import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:novel/util/colors.dart';
import 'package:novel/UI/Widgets/text_field.dart';
import 'package:novel/services/user_service.dart';
import 'package:novel/controller/register_controller.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController unController = new TextEditingController();
  final TextEditingController pwdController = new TextEditingController();
  final TextEditingController cpwdController = new TextEditingController();
  final TextEditingController vcController = new TextEditingController();
  final RegisterController registerController = Get.put(RegisterController());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          title: Text("User Login"),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              NovelTextField(
                  textController: unController,
                  label: "Username",
                  icon: Icon(Icons.person)),
              NovelTextField(
                  textController: pwdController,
                  label: "Password",
                  icon: Icon(Icons.lock)),
              NovelTextField(
                  textController: cpwdController,
                  label: "Confirm Password",
                  icon: Icon(Icons.check)),
            
              Row(
                children: [
                  NovelTextField(
                    textController: vcController,
                    label: "Code",
                    icon: Icon(Icons.percent),
                    width: 170,
                  ),
                  SizedBox(width: 20,),

                  Obx(() {
                if (registerController.isLoading.value)
                  return Center(child: CircularProgressIndicator());
                else
                  return Image.network('https://api.novel.lolli.tech/captcha' +
                        registerController.verificationCode.value);
                  }),


                  
                  
                  
                  
                 
                ],
                
              ),
              //  ElevatedButton(
              //         onPressed: () async {
              //           // await UserService.getVerificationCode()
              //           //     .then((code) => {this.verificationCode = code});
              //           print(registerController.verificationCode.value);
              //         },
              //         child: Text("code")),
            ],
          ),
        ));
  }
}
