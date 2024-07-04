import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class getText extends StatelessWidget {
   getText({super.key,  required this.text});
 String text;
  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
          fontFamily: 'Poppins'
    ),
    textAlign: TextAlign.center
    );
  }
}
