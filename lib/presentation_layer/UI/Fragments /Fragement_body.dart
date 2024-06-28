import 'package:flutter/cupertino.dart';

import '../Body/home_top_bar.dart';
import '../News/news_list.dart';

class FragementBody extends StatefulWidget {
  const FragementBody({super.key});

  @override
  State<FragementBody> createState() => _FragementBodyState();
}

class _FragementBodyState extends State<FragementBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: home_top_bar(),
        ),
        news_list(),
      ],
    );
  }
}
