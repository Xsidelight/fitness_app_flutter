import 'package:fitness_app_x/presentation/widgets/activity_page_widgets/workout_list_item.dart';
import 'package:fitness_app_x/presentation/widgets/home_page_widgets/home_page_chart.dart';
import 'package:fitness_app_x/presentation/widgets/home_page_widgets/home_page_row_item.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  String? dropDownValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Activity',
                style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff555555)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      // spreadRadius: ,
                      blurRadius: 7,
                      color: Colors.grey.shade300,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Browse workout...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
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
                            'Progress',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
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
                                hint: Text('Select'),
                                icon: Icon(Icons.keyboard_arrow_down, color: Colors.deepPurple),
                                items: <String?>['Running', 'Jumping', 'Joggling'].map((e) {
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
                            name: 'Calories',
                            number: '1.5',
                            type: 'k',
                          ),
                          RowItem(
                            name: 'Distance',
                            number: '10',
                            type: 'km',
                          ),
                          RowItem(
                            name: 'Avg Time',
                            number: '1h15',
                            type: 'm',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Your Workout',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              LimitedBox(
                maxHeight: 400,
                child: ListView(
                  children: [
                    WorkoutListItem(
                      txtLevel: 'Beginner',
                      exerciseName: 'Core Strength',
                      exerciseProgress: '2 Exercises Left (80% Done)',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    WorkoutListItem(
                      txtLevel: 'Intermediate',
                      exerciseName: 'Light Exercises',
                      exerciseProgress: '5 Exercises Left (45% Done)',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    WorkoutListItem(
                      txtLevel: 'Expert',
                      exerciseName: 'Super Strength',
                      exerciseProgress: 'All Exercises Complete (1000% Done)',
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
