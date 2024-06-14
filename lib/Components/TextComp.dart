
import 'package:flutter/material.dart';

class TextComp extends StatelessWidget {
  TextComp({super.key, required this.message});

  String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(top: 60),
      child: Text(
        message,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Poppins'
        ),
      ),
    );
  }
}
