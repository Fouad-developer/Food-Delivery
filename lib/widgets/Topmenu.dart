import 'package:flutter/material.dart';

class Data {
  final String name;
  final String img;
  Data({required this.name, required this.img});
}

class Topmenu extends StatelessWidget {
  Topmenu({super.key});
  final List<Data> Menudata = [
    Data(name: "burger", img: "burger"),
    Data(name: "pizza", img: "pizza"),
    Data(name: "beverage", img: "baverage"),
    Data(name: "cake", img: "cake"),
    Data(name: "ice cream", img: "icecream"),
   
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: Menudata.map(
              (elem) {
                return Column(children: [
                  Container(
                    width: 70,
                    height: 70,
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
                      child: Center(
                          child: Image.asset(
                        "images/${elem.img}.png", //<=
                        height: 25,
                        width: 25,
                      )),
                    ),
                  ),
                  Text(
                    elem.name,
                    style: const TextStyle(fontSize: 12),
                  )
                ]);
              },
            ).toList()));
  }
}
