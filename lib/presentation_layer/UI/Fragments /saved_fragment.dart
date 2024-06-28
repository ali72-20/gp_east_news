import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/presentation_layer/UI/News/news_item.dart';
import 'package:gp_east_news/presentation_layer/UI/News/news_list.dart';
import 'package:gp_east_news/presentation_layer/UI/News_category/item_model.dart';

import '../News/news_model.dart';

List<news_model>?GlobalsavedNews;

class saved_fragment extends StatelessWidget {
  const saved_fragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlobalsavedNews == null
          ? const No_Items_Saved()
          : savedItemViews(savedNews: GlobalsavedNews!),
    );
  }
}

class No_Items_Saved extends StatelessWidget {
  const No_Items_Saved({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "No items saved",
        style: TextStyle(fontSize: 32, fontFamily: 'Poppins'),
      ),
    );
  }
}

class savedItemViews extends StatelessWidget {
  savedItemViews({super.key, required this.savedNews});

  List<news_model> savedNews;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: savedNews.length,
        (context, index) {
          return news_item(item: savedNews[index]);
        },
      ),
    );
  }
}