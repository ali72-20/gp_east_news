import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class commentItemView extends StatelessWidget {
   commentItemView({super.key, required this.comment});
  String comment;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(comment, style: const TextStyle(color:Colors.black, fontFamily: 'Poppins'),)
    ],);
  }
}