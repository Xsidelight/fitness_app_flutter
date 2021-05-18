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
              icon: Icon(
                Icons.notifications,
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
        selectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
                size: 24,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.insert_chart,
                color: Colors.grey,
                size: 24,
              ),
              label: 'Activity'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bakery_dining,
                color: Colors.grey,
                size: 24,

              ),
              label: 'Nutrition'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
                size: 24,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
