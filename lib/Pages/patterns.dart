import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibey/Widgets/patternList.dart';
import 'package:vibey/helper/data.dart';
import 'package:vibey/models/category.dart';

class Patternpage extends StatefulWidget {
//  const Patternpage({ Key? key }) : super(key: key);

  @override
  _PatternpageState createState() => _PatternpageState();
}

class _PatternpageState extends State<Patternpage> {
  //this is where ill put my grid selection
  List<Category> cat = Data.getdatacat();

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
        currentIndex: 1,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.vibration, title: 'Patterns'),
          FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
        ],
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: cat.length, //how many what will come
            itemBuilder: (BuildContext ctx, int index) {
              return PatternList(category: cat[index]);
            },
          )),
        ],
      ),
    );
  }
}
