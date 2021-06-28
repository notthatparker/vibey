import 'package:vibey/models/category.dart';

class Data {
  static List<Category> getdatacat() {
    return [
      Category(
        name: "Night Wavez",
        imgN: 'lib/assets/wavez.png',
      ),
      Category(
        name: "Summer Drift",
        imgN: 'lib/assets/summer.png',
      ),
      Category(
        name: "Wild Fruit",
        imgN: 'lib/assets/fruit.png',
      )
    ];
  }
}
