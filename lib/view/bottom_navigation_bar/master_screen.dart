import 'package:feeportal/app/constants/color_constants.dart';
import 'package:feeportal/view/bottom_navigation_bar/courses_screen.dart';
import 'package:feeportal/view/bottom_navigation_bar/home_screen.dart';
import 'package:feeportal/view/bottom_navigation_bar/profile_screen.dart';
import 'package:feeportal/view/bottom_navigation_bar/trending_screen.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MasterScreen extends StatefulWidget {
  const MasterScreen({Key? key}) : super(key: key);

  @override
  State<MasterScreen> createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomeScreen(),
      const CoursesScreen(),
      const TrendingScreen(),
      const MyProfileScreen(),
    ];
    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: FloatingNavbar(
        borderRadius: 80,
        itemBorderRadius: 15,
        items: [
          FloatingNavbarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          FloatingNavbarItem(
            icon: Icons.book_online,
            title: 'Courses',
          ),
          FloatingNavbarItem(
            icon: Icons.trending_up,
            title: 'Trending',
          ),
          FloatingNavbarItem(
            icon: Icons.person_outline_rounded,
            title: 'My Profile',
          ),
        ],
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedBackgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),
      body: screens[_selectedIndex],
    );
  }
}
