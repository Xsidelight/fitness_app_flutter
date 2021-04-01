import 'package:fitness_app_x/screens/login_screen.dart';
import 'package:fitness_app_x/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fitness App",
      theme: ThemeData(
        primaryColor: Color(0xff845EC2),
        primaryColorLight: Color(0xffB1CED6),
        accentColor: Color(0xff845EC2),
      ),
      home: LoginScreen(),
      routes: {
        MainScreen.routeName: (ctx) => MainScreen(),
      },
    );
  }
}
