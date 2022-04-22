class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highLight;

  Food({
    required this.imgUrl,
    required this.desc,
    required this.name,
    required this.waitTime,
    required this.score,
    required this.cal,
    required this.price,
    required this.quantity,
    required this.ingredients,
    required this.about,
    this.highLight = false,
  });

  static List<Food> generateRecommendFoods() {
    return [
      Food(
          imgUrl: 'assets/images/dish1.png',
          desc: 'No1. in Sales',
          name: 'Soba Soup',
          waitTime: '50 min',
          score: 4.8,
          cal: '325 Cal',
          price: 12,
          quantity: 1,
          ingredients: [
            {"Noodle": "assets/images/ingre1.png"},
            {"Shrimp": "assets/images/ingre2.png"},
            {"Egg": "assets/images/ingre3.png"},
            {"Scallion": "assets/images/ingre4.png"}
          ],
          about: "Simple Put,ramen is a Japanese noodle soup,  with"),
      Food(
          imgUrl: 'assets/images/dish2.png',
          desc: 'great teast',
          name: 'Sai Ua samun phrai',
          waitTime: '35 min',
          score: 4.8,
          cal: '320 Cal',
          price: 18,
          quantity: 1,
          ingredients: [
            {"Noodle": "assets/images/ingre1.png"},
            {"Shrimp": "assets/images/ingre2.png"},
            {"Egg": "assets/images/ingre3.png"},
            {"Scallion": "assets/images/ingre4.png"}
          ],
          about: "Simple Put,ramen is a Japanese noodle soup,  with"),
      Food(
          imgUrl: 'assets/images/dish3.png',
          desc: 'great teast',
          name: 'ratatoulli pasta',
          waitTime: '30 min',
          score: 4.9,
          cal: '390 Cal',
          price: 28,
          quantity: 5,
          ingredients: [
            {"Noodle": "assets/images/ingre1.png"},
            {"Shrimp": "assets/images/ingre2.png"},
            {"Egg": "assets/images/ingre3.png"},
            {"Scallion": "assets/images/ingre4.png"}
          ],
          about: "Simple Put,ramen is a Japanese noodle soup,  with"),
    ];
  }

  static List<Food> generatePopularFood() {
    return [
      Food(
        imgUrl: 'assets/images/dish4.png',
        desc: 'Most Popular',
        name: 'Tomato Checken',
        waitTime: '60 min',
        score: 4.8,
        cal: '325 cal',
        price: 17,
        quantity: 0,
        ingredients: [
          {"Noodle": "assets/images/ingre1.png"},
          {"Shrimp": "assets/images/ingre2.png"},
          {"Egg": "assets/images/ingre3.png"},
          {"Scallion": "assets/images/ingre4.png"}
        ],
        about: "Simple Put,ramen is a Japanese noodle soup,  with",
        highLight: true,
      ),
      Food(
          imgUrl: 'assets/images/dish3.png',
          desc: 'great teast',
          name: 'ratatoulli pasta',
          waitTime: '30 min',
          score: 4.9,
          cal: '390 Cal',
          price: 28,
          quantity: 5,
          ingredients: [
            {"Noodle": "assets/images/ingre1.png"},
            {"Shrimp": "assets/images/ingre2.png"},
            {"Egg": "assets/images/ingre3.png"},
            {"Scallion": "assets/images/ingre4.png"}
          ],
          about: "Simple Put,ramen is a Japanese noodle soup,  with"),
    ];
  }
}
