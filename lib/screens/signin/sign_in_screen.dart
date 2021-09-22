import 'package:dordum/screens/home/home_screen.dart';
import 'package:dordum/screens/navController/buttom_nav_conroller.dart';
import 'package:dordum/screens/signin/component/sign_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String? routeName = "/sign_in";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SignInBody(),
    );
  }


  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back_ios,
            ),
          )),
      centerTitle: true,

      title: Text("Sign In"),
      actions: [
        GestureDetector(
            onTap: () {

              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => BottomNavController(),
                ),
                    (route) => false,
              );

              // Navigator.push(context, CupertinoPageRoute(builder: (_)=>BottomNavController()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Skip"
                    ,
                style: TextStyle(color: Colors.black,fontSize: 18),
              ),
            )),
      ],
    );
  }
}
