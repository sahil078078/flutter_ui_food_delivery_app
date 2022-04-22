import 'package:flutter/material.dart';
import 'package:flutter_ui_food_delivery_app/constants/colors.dart';
import 'package:flutter_ui_food_delivery_app/models/restaurant.dart';

class RestaurantInfo extends StatelessWidget {
  RestaurantInfo({Key? key}) : super(key: key);
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          restaurant.waitTime,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        restaurant.distance,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        restaurant.lable,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(restaurant.logoUrl, width: 80),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                restaurant.desc,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_outline,
                    color: kPrimaryColor,
                  ),
                  Text(
                    restaurant.score.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
