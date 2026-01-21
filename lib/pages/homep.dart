import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/widgets/BestFood.dart';
import 'package:food_delivery/widgets/Topmenu.dart';
import 'package:food_delivery/widgets/fooddetailsfood.dart';
import 'package:food_delivery/widgets/popular_food_widget.dart';

class Homep extends StatelessWidget {
  const Homep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0, //spread of shadow
        title: const Text(
          "What do you like to eat?",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: Colors.black,
          )
        ],
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.orange),
      ),
      body: SingleChildScrollView(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
              child: TextField(
                //dec
                decoration: InputDecoration(
                  hintText: "What do you want to eat?",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  fillColor: Colors.orangeAccent,
                  filled: true,
                  //border
                  enabled: true,
                ),
              ),
            ),
            Topmenu(),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Foods",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            PopularFoodWidget(),
            const Padding(
              padding: EdgeInsets.only(top: 5, left: 10),
              child: Text(
                "Best Foods",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            BestFoods(),
           
          ],
        ),
      ),
    );
  }
}
