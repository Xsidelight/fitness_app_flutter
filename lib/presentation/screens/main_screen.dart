import 'package:flutter/material.dart';

import 'bottom_nav_pages/activity_page.dart';
import 'bottom_nav_pages/home_page.dart';
import 'bottom_nav_pages/nutrition_page.dart';
import 'bottom_nav_pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _bottomNavPages = [
    HomePage(),
    ActivityPage(),
    NutritionPage(),
    ProfilePage(),
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              icon: _selectedPageIndex == 0 ? Icon(
                Icons.notifications,
                color: Colors.grey,
                size: 32,
              ) : Icon(
                Icons.menu,
                color: Colors.grey,
                size: 32,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: _bottomNavPages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.insert_chart,
              ),
              label: 'Activity'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bakery_dining,
              ),
              label: 'Nutrition'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
