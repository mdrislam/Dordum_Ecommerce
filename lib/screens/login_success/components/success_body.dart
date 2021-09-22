import 'package:dordum/components/default_button.dart';
import 'package:dordum/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SuccessBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHight! * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHight! * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHight! * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => HomeScreen()));
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
