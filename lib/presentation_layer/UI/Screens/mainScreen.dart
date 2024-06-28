import 'package:flutter/material.dart';


import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../Body/app_bar.dart';
import '../Fragments /chat_fragment.dart';
import '../Fragments /home.dart';
import '../Fragments /saved_fragment.dart';
import '../Fragments /setting_fragment.dart';
import '../colors/colors.dart';
import 'bottom_nav_item.dart';

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
        margin: const EdgeInsets.all(4),
        decoration:  BoxDecoration(
          border: Border.all(color: primary_color),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
        ),
        child: SalomonBottomBar(
          backgroundColor: Colors.transparent,
          items: <SalomonBottomBarItem>[
            SalomonBottomBarItem(
                icon: const Icon(Icons.home),
                title: bottom_nav_item(
                  title: "Home",
                )),
            SalomonBottomBarItem(
                icon: const Icon(Icons.save),
                title: bottom_nav_item(
                  title: "Saved",
                )),
            SalomonBottomBarItem(
                icon: const Icon(Icons.chat),
                title: bottom_nav_item(
                  title: "Room",
                )),
            SalomonBottomBarItem(
                icon: const Icon(Icons.settings),
                title: bottom_nav_item(
                  title: "Settings",
                )),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: primary_color,
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
          curve: Curves.easeInOutCubicEmphasized,
        ),
      ),
    );
  }
}
