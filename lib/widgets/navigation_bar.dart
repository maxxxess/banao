import 'package:banao/const/custom_color.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  MyBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF598BED),
              size: 22,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book,
              color: Color(0xFF598BED),
              size: 22,
            ),
            label: 'Learn'),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.hub_outlined,
            color: Color(0xFF598BED),
            size: 22,
          ),
          label: 'Hub',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
            color: Color(0xFF598BED),
            size: 22,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundImage: AssetImage('images/1.png'),
            radius: 22,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue,
      onTap: onTap,
    );
  }
}
