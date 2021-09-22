import 'dart:ui';

import 'package:dordum/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColorsConst {
  static const dPrimaryColor = Color(0xFFFF7643);
  static const dPrimaryLightColor = Color(0xFFFFECDF);
  static const dPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
  );
  static const dSecondaryColor = Color(0xFF979797);
  static const dTextColor = Color(0xFF757575);

  static const dAnimationDuration = Duration(milliseconds: 200);

  static final headingStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5,
  );

  static const defaultDuration = Duration(milliseconds: 250);

  static final RegExp emailValidatorRegExp = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
  static const String dEmailNullError = "Please Enter your email";
  static const String dInvalidEmailError = "Please Enter Valid Email";
  static const String dPassNullError = "Please Enter your password";
  static const String dShortPassError = "Password is too short";
  static const String dMatchPassError = "Passwords don't match";
  static const String dNamelNullError = "Please Enter your name";
  static const String dPhoneNumberNullError = "Please Enter your phone number";
  static const String dAddressNullError = "Please Enter your address";
  static final otpInputDecoration = InputDecoration(
    contentPadding:
    EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
    border: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
  );


}
 OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: AppColorsConst.dTextColor),
  );
}