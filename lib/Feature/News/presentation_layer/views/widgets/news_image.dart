import 'package:flutter/material.dart';

import '../../../../../colors/colors.dart';

class news_image extends StatelessWidget {
  news_image({super.key, required this.image});

  String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Image.network(image, fit: BoxFit.cover,),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, left: 8),
          decoration: BoxDecoration(
            color: primary_color,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ],
    );
  }
}
