
import 'dart:async';
import 'package:flutter/material.dart';
import 'Login_option.dart';

void main() {
  runApp(MaterialApp(
    home: Splash_screen(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splash_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginpagee()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Image.asset("Assets/images/HC.jpg")),
      ),
    );
  }
}