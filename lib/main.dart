import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'Home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:new AnimatedSplashScreen(
        splash: Text("FLUTTER CALCULATOR",style: TextStyle(fontSize: 30.0,color: Colors.white),), nextScreen: Home(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}