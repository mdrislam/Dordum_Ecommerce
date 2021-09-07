import 'package:dordum/const/AppConstant.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity);
}

TextTheme textTheme() {
  return TextTheme(
      bodyText1: TextStyle(color: AppColorsConst.dTextColor),
      bodyText2: TextStyle(color: AppColorsConst.dTextColor));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
          headline6: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18)));
}
