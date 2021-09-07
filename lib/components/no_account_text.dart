import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/screens/signup/sign_up_screen.dart';
import 'package:dordum/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        GestureDetector(
          onTap: () {
            print("OnSiUp");
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (_) => SignUpScreen()));
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: AppColorsConst.dPrimaryColor),
          ),
        )
      ],
    );
  }
}
