import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_beginner_dicoding/base/constants.dart';
import 'package:flutter_beginner_dicoding/base/pathassets.dart';
import 'package:flutter_beginner_dicoding/homescreen.dart';

/*
 * Splash screen state
 */
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

/*
 * Splash screen user interface
 */
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  void navigate() {
    Timer(Duration(milliseconds: 1500), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset(
                    PathAssets.SplashLogo,
                    fit: BoxFit.contain,
                    height: 120,
                  )),
              Text(
                Constants.SplashTitle,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                Constants.SplashCredits,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
