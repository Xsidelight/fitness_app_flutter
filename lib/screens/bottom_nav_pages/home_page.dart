import 'package:fitness_app_x/widgets/home_page_widgets/home_page_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? dropDownValue;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
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
                height: 280,
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
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Progress",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: DropdownButton<String?>(
                                value: dropDownValue,
                                style: TextStyle(color: Colors.deepPurple),
                                hint: Text("Select"),
                                icon: Icon(Icons.keyboard_arrow_down,
                                    color: Colors.deepPurple),
                                items: <String?>[
                                  "Running",
                                  "Jumping",
                                  "Joggling"
                                ].map((e) {
                                  return DropdownMenuItem<String?>(
                                    value: e,
                                    child: Text(e!),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    dropDownValue = value!;
                                  });
                                },
                              ),
                            ),
                          )
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
                              painter: HomePageChart(),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RowItem(
                            name: "Calories",
                            number: "1.5",
                            type: "k",
                          ),
                          RowItem(
                            name: "Distance",
                            number: "10",
                            type: "km",
                          ),
                          RowItem(
                            name: "Avg Time",
                            number: "1h15",
                            type: "m",
                          ),
                        ],
                      )
                    ],
                  ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  final String? name;
  final String? number;
  final String? type;

  RowItem({this.name, this.number, this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 80,
      child: Column(
        children: [
          Text(
            name!,
            style: TextStyle(color: Color(0xffBDBDBD)),
          ),
          SizedBox(
            height: 3,
          ),
          RichText(
            text: TextSpan(
              text: number,
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold, fontSize: 30),
              children: [
                TextSpan(
                  text: type,
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold, fontSize: 15),
                )
              ],
            ),
            // "$number $type",
            // style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
