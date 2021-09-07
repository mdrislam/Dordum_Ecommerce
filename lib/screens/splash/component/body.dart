import 'package:dordum/components/default_button.dart';
import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/screens/signin/sign_in_screen.dart';
import 'package:dordum/screens/splash/component/splash_content.dart';
import 'package:dordum/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Dorum, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people conect with store \naround hole Bangladesh.",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]["text"],
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            splashData.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                        Spacer(),
                        DefaultButton(
                          text: "Continue",
                          press: () {
                            print("Button Press");
                            //Navigator.pushNamed(context, SignInScreen.routeName!);
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (_) => SignInScreen()));
                          },
                        ),
                        Spacer(),
                      ],
                    ),
                  ))
            ],
          )),
    );
  }

  //Animted Dots
  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: AppColorsConst.dAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? AppColorsConst.dPrimaryColor
            : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
