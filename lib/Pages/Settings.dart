import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Settings page to display that its coming soon

class Settpage extends StatefulWidget {
  @override
  _SettpageState createState() => _SettpageState();
}

class _SettpageState extends State<Settpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(235, 231, 210, 1),
        extendBody: true,
        bottomNavigationBar: FloatingNavbar(
          backgroundColor: Theme.of(context).primaryColor,
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
          currentIndex: 2,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.vibration, title: 'Patterns'),
            FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'lib/assets/comingsoonvibey.png',
                //alignment: Alignment.center,
              ),
            ),
            Text("Coming Soon")
          ],
        ));
  }
}
