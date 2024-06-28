import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gp_east_news/presentation_layer/UI/colors/colors.dart';
import 'package:ionicons/ionicons.dart';

class setting_fragment extends StatelessWidget {
  const setting_fragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Text(
            'Settings',
            style: TextStyle(color: primary_color, fontFamily: 'Poppins'),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            child:  Row(
              children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.redAccent
                ),
                child:const Icon(Ionicons.earth)
              ),
                const SizedBox(width: 8,),
                const Text('Language', style: TextStyle(color: Colors.redAccent, fontFamily: 'Poppins'),)
            ],),
          )
        ],
      ),
    ));
  }
}
