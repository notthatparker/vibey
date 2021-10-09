import 'package:flutter/material.dart';
import 'package:vibey/Pages/Settings.dart';
import 'package:vibey/Pages/home.dart';
import 'package:get/get.dart';
import 'package:vibey/Pages/patterns.dart';
import 'package:vibey/Pages/splashvib.dart';
import 'package:vibey/Pages/patternvib.dart';

void main() {
  runApp(GetMaterialApp(
    //  home: Splashvib(),
    debugShowCheckedModeBanner: false,
    title: 'Vibey',
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => Homepage()),
      GetPage(name: '/Patterns', page: () => Patternpage()),
      GetPage(name: '/Splashvib', page: () => Splashvib()),
      GetPage(name: '/Settings', page: () => Settpage()),
      GetPage(
          name: '/Vibdetil',
          page: () => PatternVib(
                cat: null,
              )),
    ],
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vibey',
      theme: ThemeData(
        //    primarySwatch: Colors.purple[900],

        backgroundColor: Color.fromRGBO(235, 231, 210, 1),
        accentColor: Color(0x3F73FD),
      ),
      home: Splashvib(),
    );
  }
}
