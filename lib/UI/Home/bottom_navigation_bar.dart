import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gp_east_news/UI/colors/colors.dart';

class bottom_navigation_bar extends StatefulWidget {
  const bottom_navigation_bar({super.key});

  @override
  State<bottom_navigation_bar> createState() => _BottomBavigationBarState();
}

class _BottomBavigationBarState extends State<bottom_navigation_bar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: primary_color),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.save), label: 'Saved'),
              BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Room'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
            ],
           currentIndex:  _selectedIndex,
           selectedItemColor: primary_color,
           unselectedItemColor: Colors.black,
           unselectedLabelStyle: TextStyle(color: Colors.black),
           onTap: _onItemTapped,
         ),
      ),
    );
  }
}
