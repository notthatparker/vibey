import "package:flutter/material.dart";
import 'package:vibey/models/category.dart';
import 'package:vibration/vibration.dart';

// Custom Vibration Page
class PatternVib extends StatelessWidget {
  final Category cat;

  const PatternVib({Key key, @required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //bool vibo = false;
    int con = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(235, 231, 210, 1),
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(235, 231, 210, 1),
      body: Container(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RawMaterialButton(
                  onPressed: () async {
                    con += 1;
                    print('soma');
                    while (true) {
                      await Vibration.vibrate(
                          pattern: this.cat.patterns, intensities: [1, 255]);
                      if (con > 4) {
                        // vibo = false;
                        con = 0;
                        Vibration.cancel();
                      }
                    }
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
