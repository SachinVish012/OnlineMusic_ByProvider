import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toastRed(String? text) {
  if (text != null) {
    Fluttertoast.showToast(
      msg: text,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
    );
  }
}