import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class commentView extends StatefulWidget {
  const commentView({super.key});

  @override
  State<commentView> createState() => _commentViewState();
}

class _commentViewState extends State<commentView> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: Container(
        height: 200,
        child: Stack(children: [

        ],),
      ),
    );
  }
}
