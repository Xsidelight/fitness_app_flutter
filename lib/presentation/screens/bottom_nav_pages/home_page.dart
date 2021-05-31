import 'package:fitness_app_x/presentation/widgets/home_page_widgets/home_page_chart.dart';
import 'package:fitness_app_x/presentation/widgets/home_page_widgets/home_page_row_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  String? dropDownValue;
  late AnimationController _controller;
  late Animation _captionAnimation;
  late Animation<Offset> _homeChartAnimation;
  late Animation<Offset> _homeScrMiddleCard;
  late Animation<Offset> _homeScrWorkoutList;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _captionAnimation = Tween(begin: 0.0, end: 20.0).animate(_controller);
    _homeChartAnimation =
        Tween<Offset>(begin: Offset(0.3, 0.0), end: Offset.zero)
            .animate(_controller);
    _homeScrMiddleCard =
        Tween<Offset>(begin: Offset(-0.3, 0.0), end: Offset.zero)
            .animate(_controller);
    _homeScrWorkoutList =
        Tween<Offset>(begin: Offset(0.3, 0.0), end: Offset.zero)
            .animate(_controller);
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                'Hey User!',
                style: TextStyle(
                    fontSize: _captionAnimation.value, color: Colors.black),
              ),
              Text('Wanna burn some calories today?',
                  style: Theme.of(context).textTheme.bodyText2),
              SizedBox(
                height: 20,
              ),
              SlideTransition(
                position: _homeChartAnimation,
                child: Container(
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
                                  hint: Text('Select'),
                                  icon: Icon(Icons.keyboard_arrow_down,
                                      color: Colors.deepPurple),
                                  items: <String?>[
                                    'Running',
                                    'Jumping',
                                    'Joggling'
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
              ),
              SizedBox(
                height: 30,
              ),
              SlideTransition(
                position: _homeScrMiddleCard,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start Planning Meal',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                        ),
                        Text(
                          'Balance your daily nutrition to stay healthy.',
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
                              'Sign In',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Workouts',
                style: TextStyle(fontSize: _captionAnimation.value),
              ),
              Text(
                'Always stay in shape',
                style: TextStyle(fontSize: _captionAnimation.value),
              ),
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
                      elevation: 10,
                      child: Container(
                        height: 150,
                        width: 400,
                        child: Center(child: Text('Workout List Item')),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 150,
                        width: 400,
                        child: Text('1'),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 150,
                        width: 400,
                        child: Text('1'),
                      ),
                    ),
                    Card(
                      child: Container(
                        height: 150,
                        width: 400,
                        child: Text('1'),
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
