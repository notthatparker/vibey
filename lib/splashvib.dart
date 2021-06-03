import "package:flutter/material.dart";
import 'package:splashscreen/splashscreen.dart';

class Splashvib extends StatefulWidget {
  @override
  _SplashvibState createState() => _SplashvibState();
}

class _SplashvibState extends State<Splashvib> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      loaderColor: Colors.purple[900],
      seconds: 10,
      backgroundColor: Colors.deepPurple[50],
      loadingText: Text("Made by Four'o'Four collective"),
      title: Text(
        'Vibey',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.purple[200],
        ),
      ),
    );
  }
}
