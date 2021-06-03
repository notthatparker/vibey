import "package:flutter/material.dart";
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:vibration/vibration.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //logic for vibrating
  // a simple vibration function that checks if device has cust vib support
  //and if not goes for normal one
  void vibez() async {
    if (await Vibration.hasCustomVibrationsSupport()) {
      Vibration.vibrate(duration: 1000);
    } else {
      Vibration.vibrate();
      await Future.delayed(Duration(milliseconds: 20));
      Vibration.vibrate();
    }
  }

  void custvibez(int vib) async {
    if (await Vibration.hasCustomVibrationsSupport()) {
      Vibration.vibrate(duration: vib);
    } else {
      Vibration.vibrate(duration: vib);
      await Future.delayed(Duration(milliseconds: 20));
      Vibration.vibrate(duration: vib);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.deepPurple,
        borderRadius: 90,
        onTap: (int val) {
          //returns tab id which is user tapped

          if (val == 0) {
            Get.toNamed('/Home');
          } else if (val == 1) {
            Get.toNamed('/Patterns');
          } else if (val == 1) {
            Get.toNamed('/Settings');
          }
        },
        currentIndex: 0,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.vibration, title: 'Patterns'),
          FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
        ],
      ),
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RawMaterialButton(
                  onPressed: () async {
                    if (await Vibration.hasCustomVibrationsSupport()) {
                      Vibration.vibrate(duration: 1000);
                    } else {
                      Vibration.vibrate();
                      await Future.delayed(Duration(milliseconds: 20));
                      Vibration.vibrate();
                    }
                  },
                  elevation: 6.0,
                  fillColor: Colors.deepPurple[900],
                  child: Icon(
                    Icons.auto_awesome,
                    color: Colors.white,
                    size: 80.0,
                  ),
                  padding: EdgeInsets.all(30.0),
                  shape: CircleBorder(),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 9.0)),
                Text("Press Me Sucker"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
