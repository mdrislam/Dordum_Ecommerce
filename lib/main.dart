import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/routs.dart';
import 'package:dordum/screens/home/home_screen.dart';
import 'package:dordum/screens/navController/buttom_nav_conroller.dart';
import 'package:dordum/screens/profile/profile_screen.dart';
import 'package:dordum/screens/splash/splash_screen.dart';
import 'package:dordum/shared_preferences/shared_preferences.dart';
import 'package:dordum/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool status = false;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    status = Shared_Preferences.getUserTypeStatus() as bool;
    print("Status: " + status.toString());

    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),

      home: status ? BottomNavController() : SplashScreen(),
      // home: BottomNavController(),
      //  initialRoute: SplashScreen.routeName!,
      //  routes: routes,
    );
  }
}
