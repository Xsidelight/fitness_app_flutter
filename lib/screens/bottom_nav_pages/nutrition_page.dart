import 'package:fitness_app_x/data/meals_list.dart';
import 'package:fitness_app_x/data/models/meal.dart';
import 'package:fitness_app_x/widgets/home_page_widgets/meals_card_item.dart';
import 'package:fitness_app_x/widgets/nutrition_page_widgets/calories_painter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NutritionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Meal> mealsList = dummyMealsList;

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nutrition",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 280,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Daily Calories Intake",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          height: 140,
                          child: Transform.scale(
                            scale: 0.9,
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: CustomPaint(
                                painter: CaloriesPainter(
                                  colorStart: Theme.of(context).primaryColor,
                                  colorEnd: Theme.of(context).primaryColorLight,
                                  progress: 0.35,
                                  strokeWidth: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CaloriesRowItem(
                              name: "Carb Intake",
                              number: "1200",
                              type: "g",
                              progressValue: 0.8,
                            ),
                            CaloriesRowItem(
                              name: "Protein Intake",
                              number: "77",
                              type: "g",
                              progressValue: 0.4,
                            ),
                            CaloriesRowItem(
                              name: "Fat Intake",
                              number: "46",
                              type: "g",
                              progressValue: 0.25,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's meal",
                    style: GoogleFonts.raleway(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Manage Meal",
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: size.width - 50,
                height: 300,
                child: ListView.separated(
                  itemBuilder: (context, index) => MealsCardItem(
                    mealName: mealsList[index].name,
                    mealCategory: mealsList[index].category,
                    carb: mealsList[index].carb,
                    fat: mealsList[index].fat,
                    mealServing: mealsList[index].serving,
                    protein: mealsList[index].protein,
                    calories: mealsList[index].calories,
                  ),
                  itemCount: mealsList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: 17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CaloriesRowItem extends StatefulWidget {
  final String? name;
  final String? number;
  final String? type;
  final double? progressValue;

  CaloriesRowItem({this.name, this.number, this.type, this.progressValue});

  @override
  _CaloriesRowItemState createState() => _CaloriesRowItemState();
}

class _CaloriesRowItemState extends State<CaloriesRowItem>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..addListener(() {
            setState(() {});
          });
    controller.animateTo(widget.progressValue!);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 80,
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text: widget.number,
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Theme.of(context).primaryColor),
              children: [
                TextSpan(
                  text: widget.type,
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Theme.of(context).primaryColor),
                )
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            widget.name!,
            style: TextStyle(color: Colors.grey, fontSize: 11),
          ),
          SizedBox(
            height: 10,
          ),
          LinearProgressIndicator(
            minHeight: 6,
            value: controller.value,
            semanticsLabel: 'Linear progress indicator',
            backgroundColor: Theme.of(context).primaryColorLight,
          ),
        ],
      ),
    );
  }
}
