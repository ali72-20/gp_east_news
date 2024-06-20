import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News_Category_List extends StatelessWidget {
  News_Category_List({super.key});

  List<String> news_category = [
    'All',
    'Sports',
    'Politics',
    'Business',
    'Science',
    'Technology'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: news_category.length,
        itemBuilder: (context, index) {
          return Text(
            news_category[index],
            style: const TextStyle(
                fontSize: 12, fontFamily: 'Poppins', color: Colors.black),
          );
        },
      ),
    );
  }
}
