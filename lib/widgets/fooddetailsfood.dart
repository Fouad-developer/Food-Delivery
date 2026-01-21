import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery/pages/animation/scale_route.dart';
import 'package:food_delivery/widgets/foodorderpage.dart';

class Fooddetailsfood extends StatelessWidget {
  const Fooddetailsfood({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, //has to match the number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
          backgroundColor: const Color(0xFFFAFAFA),
          elevation: 0, //spread of shadow
          title: const Text(
            "What do you like to eat?",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, ScaleRoute(page: const Foodorderpage()));
              },
              icon: const Icon(Icons.business_center),
              color: Colors.black,
            )
          ],
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.orange),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: (Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                  child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset("images/ic_best_food_2.jpeg")),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shrimp Curry with Rice",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF3a3a3b),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$12.00",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  child: const Text(
                    "Free Delivery",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: RatingBar.builder(
                    itemSize: 26,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                const TabBar(
                  labelColor: Colors.red,
                  indicatorColor: Colors.red,
                  unselectedLabelStyle: TextStyle(fontSize: 16),
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  tabs: [
                    Tab(
                      text: "Food Details",
                    ),
                    Tab(
                      text: "Food Review",
                    )
                  ],
                ),
                SizedBox(
                  height: 160,
                  child: TabBarView(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: const Text(
                            "Tender juicy shrimp simmered in a rich, mildly spiced curry sauce with fresh veggies, aromatic herbs, and a side of fluffy rice. Creamy, flavorful, and perfectly balanced—great for seafood lovers!"
                            ),
                      
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: const Text(
                            "Super tasty shrimp curry! The sauce is rich and not too spicy, shrimp are fresh and plump, rice soaks it all up perfectly. Great value at \$12.00 with free delivery—definitely ordering again!"
                            ),
                      ),
                    )
                  ]),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.timelapse,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "4PM-12PM",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.directions,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "3KILO",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.map,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Map View",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.directions_bike,
                          color: Colors.purple,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Delivery",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ))),
      ),
    );
  }
}
