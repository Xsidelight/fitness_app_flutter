import 'package:fitness_app_x/screens/main_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviseSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: deviseSize.height,
        width: deviseSize.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xff555555),
              Color(0xffd1c4e9),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Column(
            children: [
              Spacer(),
              Image.asset('assets/images/logo_fitness.png'),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Live healthy by exercising and maintain \nyour diet with the method suit you best.",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: deviseSize.height / 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).primaryColorLight,
                    ],
                  ),
                ),
                width: 300,
                child: TextButton(
                  onPressed: () => Navigator.pushReplacementNamed(
                      context, MainScreen.routeName),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: "New to Trainy?",
                  children: [
                    TextSpan(
                      text: " Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
