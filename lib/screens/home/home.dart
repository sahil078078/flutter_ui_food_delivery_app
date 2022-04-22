import 'package:flutter/material.dart';
import 'package:flutter_ui_food_delivery_app/constants/colors.dart';
import 'package:flutter_ui_food_delivery_app/models/restaurant.dart';
import 'package:flutter_ui_food_delivery_app/screens/home/widget/food_list.dart';
import 'package:flutter_ui_food_delivery_app/screens/home/widget/food_list_view.dart';
import 'package:flutter_ui_food_delivery_app/screens/home/widget/restaurant_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
  final restaurant = Restaurant.generateRestaurant();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
        backgroundColor: kPrimaryColor,
        elevation: 2,
      ),
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            leftIcon: Icons.arrow_back_ios_outlined,
            rightIcon: Icons.search_outlined,
          ),
          RestaurantInfo(),
          FoodList(
            selected: selected,
            restaurant: restaurant,
            callback: (int index) {
              setState(() {
                selected = index;
                // print(selected);
              });
              pageController.jumpToPage(index);
            },
          ),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController,
              restaurant,
            ),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SmoothPageIndicator(
              axisDirection: Axis.horizontal,
              controller: pageController,
              count: restaurant.menu.length,
              effect: ScrollingDotsEffect(
                activeDotColor: Colors.green.withOpacity(0.5),
                activeDotScale: 1.35,
                radius: 15,
                dotColor: Colors.green.shade100,
                fixedCenter: false,
                spacing: 10,
              ),
              onDotClicked: (index) {
                setState(() {
                  pageController.jumpToPage(index);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
