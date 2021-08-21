import 'dart:async';
import 'package:chat_app/ui_helper/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'navigation/route_generator.dart';
import 'navigation/routes_key.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

final mainScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatefulWidget {
  static ValueNotifier<String> languageNotifier = ValueNotifier("en");

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance!.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: mulish,
        brightness: Brightness.light,
      ),
      initialRoute: Routes.INTRO_SCREEN,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      scaffoldMessengerKey: mainScaffoldMessengerKey,
    );
  }
}
