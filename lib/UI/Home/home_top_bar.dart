import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/Profile/user_profile.dart';
import 'package:gp_east_news/UI/colors/colors.dart';

class home_top_bar extends StatelessWidget {
  const home_top_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: primary_color,
        borderRadius: const BorderRadius.only(
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
          const Icon(Icons.notifications, color: Colors.white,),
        ],
      ),
    );
  }
}
