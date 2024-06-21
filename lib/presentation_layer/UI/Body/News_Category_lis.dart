import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_item.dart';


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
    return SizedBox(
      height: 40,
       child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: news_category.length,
        itemBuilder: (context, index) {
          return category_item(Category_name: news_category[index]);
        },
       ),
    );
  }
}
