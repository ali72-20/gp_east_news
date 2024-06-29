import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Feature/Fragmetns/settings/presentation_layer/views/widgets/Setteing_item_component.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../../colors/colors.dart';

class setting_fragment extends StatelessWidget {
  const setting_fragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Settings',
              style: TextStyle(
                  color: primary_color, fontFamily: 'Poppins', fontSize: 32),
            ),
            const SizedBox(height: 20),
            setteingItemComponent(
              text: 'Language',
              icon: Ionicons.earth_outline,
              color: Colors.redAccent,
              list: const ['English', 'Arabic'],
              currentValue: 'English',
            ),
            setteingItemComponent(
              text: 'Them',
              icon: Ionicons.moon_outline,
              color: Colors.blueAccent,
              list: const ['Light', 'Dark'],
              currentValue: 'Light',
            ),
          ],
        ),
      ),
    );
  }
}
