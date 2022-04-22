import 'package:flutter/material.dart';
import 'package:flutter_ui_food_delivery_app/constants/colors.dart';

import '../../../models/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;

  const FoodItem({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: Image.asset(
              food.imgUrl,
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        food.name,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                      ),
                      const Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    food.desc,
                    style: TextStyle(
                      color: food.highLight
                          ? kPrimaryColor
                          : Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        "\$",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        food.price.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
