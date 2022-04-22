import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String lable;
  String logoUrl;
  String desc;
  num score;

  Map<String, List<Food>> menu;

  Restaurant({
    required this.name,
    required this.waitTime,
    required this.distance,
    required this.lable,
    required this.logoUrl,
    required this.desc,
    required this.score,
    required this.menu,
  });

  static Restaurant generateRestaurant() {
    return Restaurant(
      name: 'Restaurant',
      waitTime: '20-30 min',
      distance: '2.5 km',
      lable: 'Restaurant',
      logoUrl: 'assets/images/res_logo.png',
      desc: 'Orange sandwiches is delicious',
      score: 4.7,
      menu: {
        "Recommend": Food.generateRecommendFoods(),
        "Popular": Food.generatePopularFood(),
        "Noodles": [],
        "Pizza": [],
      },
    );
  }
}
