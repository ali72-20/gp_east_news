
import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/Home/app_bar.dart';
import 'package:gp_east_news/UI/Home/home_top_bar.dart';
import 'package:gp_east_news/UI/colors/colors.dart';

import 'News_Category_lis.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary_color,
        elevation: 20,
        title: const app_bar(),
        centerTitle: true,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: home_top_bar(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: News_Category_List(),
            ),
          ),
        ],
      ),
    );
  }
}
