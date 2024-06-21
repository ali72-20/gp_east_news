import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Body/app_bar.dart';
import '../colors/colors.dart';

class chat_fragment extends StatelessWidget {
  const chat_fragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: primary_color),
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primary_color,
            ),
              onPressed: () {}, child: Icon(Icons.start, color: Colors.white))
        ],
      ),
    ));
  }
}
