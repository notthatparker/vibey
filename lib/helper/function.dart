import 'package:vibration/vibration.dart';

class Functions {
  bool vibo = false;
  int con = 0;

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

  void buttonLogic(bool vibo, int con) async {
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
  }

  void longpress() {
    vibo = false;
    if (vibo == false) {
      print("false");
      con = 0;
    }
    Vibration.cancel();
  }
}
