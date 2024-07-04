import 'dart:ui';

import 'package:flutter/material.dart';


class AppRoundedButtonBlur extends StatelessWidget {
  final Function()? onTap;
  final Icon icon;
  const AppRoundedButtonBlur({Key? key, this.onTap, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white24,
      borderRadius: BorderRadius.circular(56),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(56),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(56),
            onTap: onTap,
            child: SizedBox(
              width: 56,
              height: 56,
              child: icon
            ),
          ),
        ),
      ),
    );
  }
}