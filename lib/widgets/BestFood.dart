import 'package:flutter/material.dart';
import 'package:food_delivery/pages/animation/scale_route.dart';
import 'package:food_delivery/pages/homep.dart';
import 'package:food_delivery/widgets/fooddetailsfood.dart';

class Data_b {
  final String name;
  final String img;
  Data_b({required this.name, required this.img});
}

class BestFoods extends StatelessWidget {
  BestFoods({super.key});

  final List<Data_b> Menudata_b = [
    Data_b(name: "", img: "ic_best_food_2"),
    Data_b(name: "", img: "ic_best_food_1"),
    Data_b(name: "", img: "ic_best_food_3"),
    Data_b(name: "", img: "ic_best_food_4"),
    Data_b(name: "", img: "ic_best_food_5"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        
        child: Column(
            children: Menudata_b.map(
          (elem) {
            return InkWell(
              onTap: () {
                if(Menudata_b.indexOf(elem)==0){
                Navigator.push(
                    context,
                    ScaleRoute(
                        page: Fooddetailsfood(
                      
                    )
                    )
                    );
              }},
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 7, left: 5, top: 5, bottom: 6),
                child: Container(
                  width: 400,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(10), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xfffae3e2),
                        blurRadius: 10, // Blur effect
                        offset: Offset(0, 0.75), // Shadow offset
                      ),
                    ],
                  ),
                  child: Card(
                    color: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "images/" + elem.img + ".jpeg",
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList()));
  }
}
