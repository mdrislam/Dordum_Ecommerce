import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Muli",
          textTheme: TextTheme(
              bodyText1: TextStyle(color: AppColorsConst.dTextColor),
              bodyText2: TextStyle(color: AppColorsConst.dTextColor)),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: SplashScreen(),
    );
  }
}
