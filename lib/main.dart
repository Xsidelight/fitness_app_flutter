import 'package:fitness_app_x/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;


  MyApp({required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primaryColor: Color(0xff845EC2),
        primaryColorLight: Color(0xffB1CED6),
        accentColor: Color(0xff845EC2),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
