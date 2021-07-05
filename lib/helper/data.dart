import 'package:vibey/models/category.dart';

class Data {
  static List<Category> getdatacat() {
    return [
      Category(
        name: "Night Wavez",
        imgN: 'lib/assets/wavez.png',
        patterns: [
          100,
          200,
          100,
          100,
          200,
          1000,
          200,
          100,
          300,
          200,
          10,
          100,
          10,
          100,
          10
        ],
      ),
      Category(
        name: "Summer Drift",
        imgN: 'lib/assets/summer.png',
        patterns: [100, 200, 100, 200, 10, 100, 10, 100, 10],
      ),
      Category(
        name: "Wild Fruit",
        imgN: 'lib/assets/fruit.png',
        patterns: [100, 200, 100, 200],
      )
    ];
  }
}
