import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MealsCardItem extends StatelessWidget {
  final String? mealName;
  final String? mealCategory;
  final String? mealServing;
  final double? protein;
  final double? carb;
  final double? fat;
  final int? calories;

  MealsCardItem(
      {this.mealName,
      this.mealCategory,
      this.mealServing,
      this.protein,
      this.carb,
      this.fat,
      this.calories});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mealCategory!,
                    style: TextStyle(color: Color(0xff555555), fontSize: 10),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    mealName!,
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff555555),
                    ),
                  ),
                  Text(
                    mealServing!,
                    style: TextStyle(color: Color(0xff555555)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '${protein}g',
                            style: GoogleFonts.raleway(
                                fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff555555)),
                          ),
                          Text(
                            'Protein',
                            style: TextStyle(color: Color(0xff555555), fontSize: 10,),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Text(
                            '${carb}g',
                            style: GoogleFonts.raleway(
                                fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff555555)),
                          ),
                          Text(
                            'Carbs',
                            style: TextStyle(color: Color(0xff555555), fontSize: 10),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Text(
                            '${fat}g',
                            style: GoogleFonts.raleway(
                                fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff555555)),
                          ),
                          Text(
                            'Fat',
                            style: TextStyle(color: Color(0xff555555), fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                height: double.infinity,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        bottomLeft: Radius.circular(40),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).primaryColorLight
                        ])),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        calories.toString(),
                        style: GoogleFonts.raleway(
                            fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        'Calories',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text(
                              'Tap to view details',
                              style:
                                  TextStyle(fontSize: 7, color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward,
                                size: 8, color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
