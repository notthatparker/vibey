import "package:flutter/material.dart";
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:vibration/vibration.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool vibo = false;
  int con = 0;
  //logic for vibrating
  // a simple vibration function that checks if device has cust vib support
  //and if not goes for normal one
  void vibez() async {
    if (await Vibration.hasCustomVibrationsSupport()) {
      Vibration.vibrate(duration: 1000, amplitude: 240);
    } else {
      Vibration.vibrate(amplitude: 200);
      await Future.delayed(Duration(milliseconds: 20));
      Vibration.vibrate(amplitude: 200);
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

  void onvib(bool vibo) async {
    while (vibo) {
      vibez();
      await Future.delayed(Duration(milliseconds: 20));
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
            Get.toNamed('/');
          } else if (val == 1) {
            Get.toNamed('/Patterns');
          } else if (val == 2) {
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
                    vibo = true;
                    con += 1;
                    // onvib(vibo);
                    while (vibo && con != 0) {
                      vibez();
                      await Future.delayed(Duration(milliseconds: 20));
                      if (con > 4) {
                        vibo = false;
                        con = 0;
                      }
                    }
                  },
                  onLongPress: () {
                    vibo = false;
                    if (vibo == false) {
                      print("false");
                      con = 0;
                    }
                  },
                  elevation: 6.0,
                  fillColor: Colors.deepPurple[900],
                  child: Image(
                    image: AssetImage('lib/assets/vibey.png'),
                    width: 100,
                  ),
                  padding: EdgeInsets.all(70.0),
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
