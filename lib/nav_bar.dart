import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/home/home_screen.dart';
import 'package:furniture_shopping_app/screens/notif_screen.dart';
import 'package:furniture_shopping_app/screens/profile_screen.dart';
import 'package:furniture_shopping_app/screens/save_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  List pages = [
    const HomeScreen(),
    const SaveScreen(),
    const NotifScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color(0xff999999),
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border), label: 'save'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_rounded), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'home'),
          ]),
    );
  }
}
