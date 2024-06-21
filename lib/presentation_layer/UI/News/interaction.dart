import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'interaction_component.dart';

class intreaction extends StatefulWidget {
  const intreaction({super.key});

  @override
  State<intreaction> createState() => _intreactionState();
}

class _intreactionState extends State<intreaction> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12,bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          interaction_component(
           act_icon: Icons.favorite,
          ),
          interaction_component(act_icon: Icons.comment),
          interaction_component(act_icon: Icons.save),
        ],
      ),
    );
  }
}
