
import 'package:flutter/material.dart';

import 'package:gp_east_news/UI/colors/colors.dart';

import '../Body/News_Category_lis.dart';
import '../Body/app_bar.dart';
import '../Body/home_top_bar.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
