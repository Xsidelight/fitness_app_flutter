import 'package:fitness_app_x/presentation/screens/login_screen.dart';
import 'package:fitness_app_x/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(builder: (_) => LoginScreen());
    } else if (settings.name == '/main_screen') {
      return MaterialPageRoute(builder: (_) => MainScreen());
    } else {
      return null;
    }
  }
}
