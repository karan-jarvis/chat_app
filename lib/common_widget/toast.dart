import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast({String? message}){
  Fluttertoast.showToast(
      msg: message!,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 5,
      backgroundColor: Color(0xff5D4DB1),
      textColor: Colors.white,
      fontSize: 16.0);
}