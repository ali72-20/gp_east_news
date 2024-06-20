
import 'package:flutter/material.dart';


import '../Body/app_bar.dart';
import '../Fragments /chat_fragment.dart';
import '../Fragments /home.dart';
import '../Fragments /saved_fragment.dart';
import '../Fragments /setting_fragment.dart';
import '../colors/colors.dart';

class main_screen extends StatefulWidget {
  main_screen({super.key, required this.current_fragmnet_index});
  int current_fragmnet_index = 0;
  @override
  State<main_screen> createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {
  List<Widget> body = const [
    home(),
    saved_fragment(),
    chat_fragment(),
    setting_fragment(),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: primary_color,
      title: const app_bar(),
    ),

      body: body.elementAt(_selectedIndex),

      bottomNavigationBar: Container(
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
            selectedLabelStyle: const TextStyle(fontFamily: 'Poppins'),
            onTap: _onItemTapped,
            elevation: 12,
          ),
        ),
      ),
    );
  }
}
