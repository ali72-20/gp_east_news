import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class interaction_component extends StatelessWidget {
  interaction_component({super.key, required this.act_icon});
  IconData act_icon;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
         Icon(act_icon)
    ],);
  }
}
