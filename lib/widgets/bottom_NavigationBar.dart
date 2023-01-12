import 'package:flight_booking_ui/constants.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kBackgroundColor,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      selectedItemColor: kMainThemeColor,
      unselectedItemColor: Colors.grey[400],
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.home,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.search,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.window,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.notifications,
            size: 30,
          ),
        ),
      ],
    );
  }
}
