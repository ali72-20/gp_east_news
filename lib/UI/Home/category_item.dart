import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/Profile/user_profile.dart';
import 'package:gp_east_news/UI/colors/colors.dart';

class category_item extends StatefulWidget {
  category_item({super.key, required this.Category_name});

  String Category_name;

  @override
  State<category_item> createState() => _category_itemState();
}

class _category_itemState extends State<category_item> {
  Color select_color = primary_color;
  Color box_color = Colors.white;
  Color selected_text_color = Colors.white;
  Color text_color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){

      },
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: box_color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.Category_name,
            style: TextStyle(
                color: text_color, fontFamily: 'Poppins', fontSize: 16),
          ),
        ),
      ),
    );
  }
}
