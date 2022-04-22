import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_food_delivery_app/models/restaurant.dart';

import 'food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  var pageController = PageController();
  final Restaurant restaurant;

  FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: PageView(
          controller: pageController,
          onPageChanged: (index) => callback,
          children: category
              .map((e) => ListView.builder(
                  padding: EdgeInsets.zero,
                  // itemCount: category.length,
                  itemCount: restaurant.menu[category[selected]]!.length,
                  itemBuilder: (context, index) {
                    return FoodItem(
                        food: restaurant.menu[category[selected]]![index]);
                  }))
              .toList()),
    );
  }
}
