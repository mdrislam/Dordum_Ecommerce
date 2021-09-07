import 'dart:ui';

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

  final headingStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5,
  );

  static const defaultDuration = Duration(milliseconds: 250);
}
