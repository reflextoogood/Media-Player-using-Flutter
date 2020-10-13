import 'package:MediaPlayer/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 5000,
            splash: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "SKIP 2 BEATS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Image.asset('assets/JOSh.gif'),
              ],
            ),
            splashIconSize: 500.0,
            nextScreen: MyHome(),
            splashTransition: SplashTransition.scaleTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Colors.black));
  }
}
