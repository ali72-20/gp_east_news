import 'package:flutter/cupertino.dart';
import 'package:gp_east_news/UI/News/news_item.dart';

import 'news_model.dart';

class news_list extends StatelessWidget {
   news_list({super.key});
  List<news_model> list_news = [
     news_model(title: "test title for news", image: 'assets/Images/test_imagepng.png', des: "test descr"),
     news_model(title: "test title for news", image: 'assets/Images/test_imagepng.png', des: "test descr"),
     news_model(title: "test title for news", image: 'assets/Images/test_imagepng.png', des: "test descr"),
     news_model(title: "test title for news", image: 'assets/Images/test_imagepng.png', des: "test descr"),
     news_model(title: "test title for news", image: 'assets/Images/test_imagepng.png', des: "test descr"),
     news_model(title: "test title for news", image: 'assets/Images/test_imagepng.png', des: "test descr"),
     news_model(title: "test title for news", image: 'assets/Images/test_imagepng.png', des: "test descr"),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate:  SliverChildBuilderDelegate(
          childCount: list_news.length,
            (context,index){
               return news_item(item: list_news[index]);
            }
        )
    );
  }
}
