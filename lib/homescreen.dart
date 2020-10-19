import 'package:flutter/material.dart';
import 'package:flutter_beginner_dicoding/gamepage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Color.fromRGBO(58, 66, 86, 1.0),
            fontFamily: 'Raleway'),
        home: GamePage(title: 'Best Game Android'));
  }
}
