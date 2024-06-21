import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../Profile/user_profile.dart';
import '../colors/colors.dart';

class home_top_bar extends StatelessWidget {
  const home_top_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const user_profile()));
              },
              child: Image.asset('assets/Images/user.png')),
          const SizedBox(
            width: 8,
          ),
          Icon(Icons.notifications, color: primary_color,),
        ],
      ),
    );
  }
}
