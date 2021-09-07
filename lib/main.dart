import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/routs.dart';
import 'package:dordum/screens/splash/splash_screen.dart';
import 'package:dordum/theme.dart';
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
      theme: theme(),
      home: SplashScreen(),
      //  initialRoute: SplashScreen.routeName!,
      //  routes: routes,
    );
  }
}


