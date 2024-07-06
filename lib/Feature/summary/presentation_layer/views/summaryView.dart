import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/Assets/assets_data.dart';
import 'package:gp_east_news/colors/colors.dart';

class summaryView extends StatelessWidget {
  summaryView({super.key, required this.summaryText});

  String summaryText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Text(
          summaryText,
          style: const TextStyle(fontFamily: kPrimaryFont),
        ),
      ),
      title: const Text(
        'Summary',
        style: TextStyle(fontFamily: kPrimaryFont, color: Colors.black),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Close',
            style: TextStyle(color: Colors.black, fontFamily: kPrimaryFont),
          ),
        ),
      ],
    );
  }
}
