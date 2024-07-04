import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class getHeadingText extends StatelessWidget {
  const getHeadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(bottom: 4),
        child: Text(
          'Please wait …',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            fontFamily: 'Poppins'
          ),
          textAlign: TextAlign.center,
        )
    );;
  }
}
