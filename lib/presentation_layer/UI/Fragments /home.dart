
import 'package:flutter/material.dart';


import '../Body/News_Category_lis.dart';
import '../Body/home_top_bar.dart';
import '../News/news_list.dart';
import '../Screens/tap_item.dart';
import '../colors/colors.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(-8),
            child: TabBar(
              isScrollable: true,
              indicatorColor: primary_color,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: primary_color,
              tabs: [
                Tab(
                  child: tap_item(
                    title: "All",
                  ),
                ),
                Tab(
                  child: tap_item(
                    title: "Sports",
                  ),
                ),
                Tab(
                  child: tap_item(
                    title: "Politics",
                  ),
                ),
                Tab(
                  child: tap_item(title: "Business",),
                ),
                Tab(
                  child: tap_item(title: "Science",),
                ),
                Tab(
                  child: tap_item(title: "Technology",),
                ),
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: home_top_bar(),
            ),
            news_list(),
          ],
        ),
      ),
    );
  }
}
