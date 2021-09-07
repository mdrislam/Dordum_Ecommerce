import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/size_config.dart';
import 'package:flutter/material.dart';
class SplashContent extends StatelessWidget {
  const SplashContent({Key? key, this.text, this.image}) : super(key: key);
  final String? text, image;

  // "Welcome to Dordum, Let's shop!"
  //"assets/images/splash_1.png"

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "DORDUM",
          style: TextStyle(
              fontSize: getProportionateScreenHeight(36),
              color: AppColorsConst.dPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(text.toString()),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image.toString(),
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}