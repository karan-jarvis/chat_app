import 'package:chat_app/navigation/routes_key.dart';
import 'package:chat_app/screens/intro_screen/presentation/page/intro_screen.dart';
import 'package:chat_app/screens/phone_number_screen/presentation/page/phone_number_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {

      ///intro Screen

      case Routes.INTRO_SCREEN:
        return MaterialPageRoute(builder: (context) => IntroScreen());

      case Routes.PHONE_NUMBER_SCREEN:
        return MaterialPageRoute(builder: (context) => PhoneNumberScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Center(
          child: Text("Page not found!"),
        ),
      );
    });
  }
/*PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return LoginScreen();
            },
            transitionDuration: Duration(milliseconds: 300),
            reverseTransitionDuration: Duration(milliseconds: 300),
            settings: settings,
            maintainState: true,
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, -1),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });*/
}
