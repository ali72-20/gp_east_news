import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/Body/app_bar.dart';
import 'package:gp_east_news/UI/colors/colors.dart';

class setting_fragment extends StatelessWidget {
  const setting_fragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary_color,
        title: const app_bar(),
      ),
    );
  }
}
