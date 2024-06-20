import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Body/app_bar.dart';
import '../colors/colors.dart';

class saved_fragment extends StatelessWidget {
  const saved_fragment({super.key});

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
