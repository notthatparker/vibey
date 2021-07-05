import "package:flutter/material.dart";
import 'package:vibey/models/category.dart';
import 'package:vibration/vibration.dart';

class PatternVib extends StatelessWidget {
  final Category cat;

  const PatternVib({Key key, @required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RawMaterialButton(
                  onPressed: () async {
                    print('soma');
                    await Vibration.vibrate(
                        pattern: this.cat.patterns, intensities: [1, 255]);
                  },
                  onLongPress: () {
                    Vibration.cancel();
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
                Text(this.cat.name,
                    style: TextStyle(fontSize: 25, color: Colors.deepPurple)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
