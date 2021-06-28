import 'package:flutter/material.dart';
import 'package:vibey/models/category.dart';

class PatternList extends StatelessWidget {
  Category category;
  PatternList({this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        height: 200,
        child: Stack(
          children: [
            Positioned.fill(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(this.category.imgN, fit: BoxFit.cover),
            )),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black.withOpacity(0.9), Colors.transparent],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 30,
                right: 30,
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Text(this.category.name,
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ],
                ))
          ],
        ));
  }
}
