import 'package:flutter/cupertino.dart';

navigation(routeName, context) {
  Navigator.pushNamed(context, routeName);
}

navigationRemove(routeName, context) {
  Navigator.of(context).pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false);
}
