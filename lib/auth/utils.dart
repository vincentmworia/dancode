import 'package:flutter/material.dart';

class Utils {
  // ignore: prefer_typing_uninitialized_variables
  static var messengerKey;

  static showSnackBar (String? text) {
    if (text == null) return;
    var messengerKey = GlobalKey<ScaffoldMessengerState>();
    final snackBar = SnackBar(
        content: Text(text),
        backgroundColor: Colors.red);

    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

