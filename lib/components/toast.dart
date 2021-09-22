import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Flutter_Toast {
  static myToast(String tString) async {
    Fluttertoast.showToast(
        msg: tString,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
