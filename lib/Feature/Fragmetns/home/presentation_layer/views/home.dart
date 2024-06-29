import 'package:flutter/material.dart';
import 'package:gp_east_news/Feature/Fragmetns/home/presentation_layer/views/widgets/tabs/Tabs_list.dart';
import 'package:gp_east_news/Feature/Fragmetns/home/presentation_layer/views/widgets/tabs/widgets/tab_scroll_view.dart';
import 'package:gp_east_news/Feature/Fragmetns/Fragement_body.dart';
import '../../../../../colors/colors.dart';
import 'widgets/tabs/widgets/tap_item.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(-8),
              child: tabScrollView(),
            ),
          ),
          body: const TabBarView(
            children: [
              FragementBody(),
              FragementBody(),
              FragementBody(),
              FragementBody(),
              FragementBody(),
              FragementBody(),
              FragementBody(),
            ],
          )),
    );
  }
}
