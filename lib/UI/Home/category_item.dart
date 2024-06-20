import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class category_item extends StatelessWidget {
  category_item({super.key, required this.Category_name});

  String Category_name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: const BorderRadius.all(Radius.circular(8))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          Category_name,
          style:
              const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 16),
        ),
      ),
    );
  }
}
