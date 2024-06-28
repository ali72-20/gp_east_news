import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/presentation_layer/UI/News/news_item.dart';
import 'package:gp_east_news/presentation_layer/UI/News/news_model.dart';
import 'package:gp_east_news/presentation_layer/UI/colors/colors.dart';

class news_details extends StatelessWidget {
   news_details({super.key, required this.item});
  news_model item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: primary_color,),
    );
  }
}
