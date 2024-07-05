import 'package:flutter/cupertino.dart';
import '../../../../../News/Data_layer/Api/news_servieces/news_model.dart';
import '../../../../../News/presentation_layer/views/widgets/news_item.dart';
import 'no_item_saved.dart';

class savedItemViews extends StatelessWidget {
  savedItemViews({super.key, required this.savedNews});

  List<news_model> savedNews;

  @override
  Widget build(BuildContext context) {
    return SliverList(

          delegate: SliverChildBuilderDelegate(
            childCount: savedNews.length,
            (context, index) {
              return savedNews.isEmpty
                  ? const No_Items_Saved()
                  : news_item(item: savedNews[index]);
            },
          ),
    );
  }
}
