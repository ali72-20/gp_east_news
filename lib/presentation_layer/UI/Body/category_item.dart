import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../colors/colors.dart';

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
  int currect = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
        child: Text(
          widget.Category_name,
          style: const TextStyle(
              color: Colors.white, fontFamily: 'Poppins', fontSize: 16),
      ),
    );
  }
}
