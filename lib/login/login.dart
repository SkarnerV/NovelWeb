import 'package:flutter/material.dart';
import 'package:novel/UI/Widgets/app_text.dart';
import '../shelf/index.dart';
import '../util/colors.dart';

// Create a Form widget.
class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          title: Text("User Login")
          ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          
          child: Form(
          key: _formKey,
          child: 
          
          Container(
             padding: EdgeInsets.only(left:20,right:20),
            child:
              Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              SizedBox(height: 40,),
              
                Container(
                 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)),
                  child:  TextField(
                  // The validator receives the text that the user has entered.
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                  ),
                ),
                ),
              
              SizedBox(height: 30,),
                TextField(
                  // The validator receives the text that the user has entered.
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
              
              SizedBox(height:20),

              Row(
                
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.mainColor)),
                    onPressed:() {
                    Navigator.pop(context);
                  }, child: const Text('Login'),),

                SizedBox(width: 20,),
                  InkWell(
                    onTap:() {
                      
                    },
                    child: AppText(text:"Create Account", size:12,color: AppColors.subColor1,)
                  )

              ],)

             
              





            ],
          ),
          
          
           )
          
        
        )));
  }
}
