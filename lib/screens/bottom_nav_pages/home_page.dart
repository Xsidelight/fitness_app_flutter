import 'package:fitness_app_x/widgets/home_page_widgets/home_page_chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey User!",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text("Wanna burn some calories today?",
                style: Theme.of(context).textTheme.bodyText2),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 120,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(2, 2),
                        color: Theme.of(context).primaryColor,
                        blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue),
                  color: Theme.of(context).primaryColor),
              child: CustomPaint(
                // size: Size(300, 300),
                painter: HomePageChart(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start Planning Meal",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                    Text(
                      "Balance your daily nutrition to stay healthy.",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Theme.of(context).primaryColor,
                            Theme.of(context).primaryColorLight,
                          ],
                        ),
                      ),
                      width: 95,
                      height: 31,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Workouts",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text("Always stay in shape",
                style: Theme.of(context).textTheme.bodyText1),
            SizedBox(
              height: 5,
            ),
            Container(
              width: size.width - 50,
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    child: Container(
                      height: 150,
                      width: 400,
                      child: Center(child: Text("Workout List Item")),
                    ),
                    elevation: 10,
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 400,
                      child: Text("1"),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 400,
                      child: Text("1"),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 150,
                      width: 400,
                      child: Text("1"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
