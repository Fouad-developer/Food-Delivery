import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data {
  final String name;
  final String img;
  final String price;
  Data({required this.price, required this.name, required this.img});
}

class PopularFoodWidget extends StatelessWidget {
  PopularFoodWidget({super.key});
  final List<Data> Menudata = [
    Data(price: "\$5", name: "Breakfast Burger", img: "ic_popular_food_1"),
    Data(name: "hearty pasta", img: "ic_popular_food_3", price: "\$7"),
    Data(name: "Grilled Salmon Salad", img: "ic_popular_food_5", price: "\$9"),
    Data(name: "Mixed Grilled Meats", img: "ic_popular_food_6", price: "\$13"),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: Menudata.map(
              (elem) {
                return Column(children: [
                  Container(
                    width: 170,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xfffae3e2),
                          blurRadius: 10, // Blur effect
                          offset: Offset(0, 0.75), // Shadow offset
                        ),
                      ],
                    ),
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(top: 20),
                                child: Center(
                                    child: Image.asset(
                                  "images/${elem.img}.png", //<=
                                  height: 80,
                                  width: 80,
                                )),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    height: 30,
                                    width: 30,
                                    padding: const EdgeInsets.all(5),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: const Icon(
                                        CupertinoIcons.heart_fill,
                                        size: 20,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, right: 5, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    elem.name,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.orangeAccent,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      height: 30,
                                      width: 30,
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: const Icon(
                                          CupertinoIcons.arrow_2_circlepath,
                                          size: 20,
                                          color: Colors.red,
                                        ),
                                      ))
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              elem.price,
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]);
              },
            ).toList()));
  }
}
