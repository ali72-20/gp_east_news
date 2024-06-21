import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tap_item extends StatelessWidget {
  tap_item({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontFamily: 'Poppins', fontSize: 12,),
    );
  }
}
