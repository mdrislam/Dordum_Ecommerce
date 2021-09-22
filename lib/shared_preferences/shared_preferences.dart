import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared_Preferences {
  static Future<bool> getUserTypeStatus() async {
    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();
    print("Status:  ${_sharedPreferences.getBool("state")} ");
    return _sharedPreferences.getBool(
          "state",
        ) ??
        false;
  }

  static Future setUserTypeStatus(bool status) async {
    SharedPreferences _sharedPreferences =
    await SharedPreferences.getInstance();
    _sharedPreferences.setBool("state", status);
  }
}
