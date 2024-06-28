import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../colors/colors.dart';

class TextInputComp extends StatelessWidget {
  TextInputComp({super.key, required this.lableText, required this.sufIcone});

  String lableText;
  IconData sufIcone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32.0, left: 32.0, top: 24),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "The $lableText is Required";
          }
        },
        style: const TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        // smartDashesType: SmartDashesType.enabled,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: lableText,
          labelStyle: TextStyle(
              color: gray,
              fontFamily: 'Poppins'
          ),
          suffixIcon: Icon(
            sufIcone,
          ),
        ),
      ),
    );
  }
}