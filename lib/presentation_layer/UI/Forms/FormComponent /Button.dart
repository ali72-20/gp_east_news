import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../colors/colors.dart';
import '../../Fragments /home.dart';

class Button extends StatefulWidget {
   Button({super.key, required this.title, required this.backgroundColor, required this.onPress});

  String title;
  Color backgroundColor;
  final void Function() onPress;
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 32),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.backgroundColor ,
          elevation: 12.0,
        ),
        onPressed: widget.onPress,
        child:  Padding(
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: Text(
           widget.title,
            style: const TextStyle(
                color: Colors.white, fontFamily: 'Poppins', fontSize: 16),
          ),
        ),
      ),
    );
  }
}
