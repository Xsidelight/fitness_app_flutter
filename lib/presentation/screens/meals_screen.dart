import 'package:fitness_app_x/presentation/widgets/meals_screen_widgets/txt_button.dart';
import 'package:flutter/material.dart';

class MealsScreen extends StatefulWidget {
  const MealsScreen({Key? key}) : super(key: key);

  @override
  _MealsScreenState createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Meals',
          style: TextStyle(color: Colors.grey.shade800, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey,
                size: 32,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15, right: 20, left: 20),
            child: Container(
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
                  hintText: 'Search Meal...',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                TxtButton(title: 'Latest'),
                SizedBox(
                  width: 10,
                ),
                TxtButton(title: 'Recommended'),
                SizedBox(
                  width: 10,
                ),
                TxtButton(title: 'Breakfast'),
                SizedBox(
                  width: 10,
                ),
                TxtButton(title: 'Lunch'),
                SizedBox(
                  width: 10,
                ),
                TxtButton(title: 'Dinner'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
