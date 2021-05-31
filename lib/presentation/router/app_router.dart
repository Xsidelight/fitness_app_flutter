import 'package:fitness_app_x/presentation/screens/login_screen.dart';
import 'package:fitness_app_x/presentation/screens/main_screen.dart';
import 'package:fitness_app_x/presentation/screens/meals_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(builder: (_) => LoginScreen());
    } else if (settings.name == 'main_screen') {
      return PageRouteBuilder(
        transitionDuration: Duration(seconds: 1),
        pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) =>
            MainScreen(),
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) =>
            Align(
          child: SizeTransition(
            sizeFactor: animation,
            child: child,
          ),
        ),
      );
    } else if (settings.name == 'meals_screen') {
      return MaterialPageRoute(builder: (_) => MealsScreen());
    } else {
      return null;
    }
  }
}
