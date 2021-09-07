import 'package:dordum/screens/signin/sign_in_screen.dart';
import 'package:dordum/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
SplashScreen.routeName!:(context) => SplashScreen(),
  SignInScreen.routeName! :(context)=>SignInScreen(),

};