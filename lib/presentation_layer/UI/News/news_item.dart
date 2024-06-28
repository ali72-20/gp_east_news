import 'package:flutter/material.dart';
import 'package:gp_east_news/presentation_layer/UI/News/news_details.dart';
import '../colors/colors.dart';
import 'interaction.dart';
import 'news_image.dart';
import 'news_model.dart';

class news_item extends StatelessWidget {
  news_item({super.key, required this.item});

  news_model item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => news_details(item: item),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: primary_color),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            news_image(image: item.image),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "This is the description of the this news",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(color: Colors.black),
            ),
            intreaction(),
          ],
        ),
      ),
    );
  }
}
