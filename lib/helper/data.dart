import 'package:vibey/models/category.dart';

class Data {
  static List<Category> getdatacat() {
    return [
      Category(
        name: "Night Wavez",
        imgN: 'lib/assets/wavez.png',
        patterns: [
          120,
          20,
          120,
          10,
          120,
          10,
          120,
          120,
          30,
          230,
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
        patterns: [20, 20, 120, 20, 310, 10, 130, 10, 310],
      ),
      Category(
        name: "Wild Fruit",
        imgN: 'lib/assets/fruit.png',
        patterns: [
          30,
          200,
          10,
          200,
          30,
          30,
          20,
          30,
          100,
        ],
      )
    ];
  }
}
