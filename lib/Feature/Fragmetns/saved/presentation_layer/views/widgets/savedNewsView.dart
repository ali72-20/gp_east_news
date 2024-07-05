import 'package:flutter/cupertino.dart';
import 'package:gp_east_news/Feature/Fragmetns/saved/presentation_layer/views/widgets/usSavedDialog.dart';
import '../../../../../News/Data_layer/Api/news_servieces/news_model.dart';
import '../../../../../News/presentation_layer/views/widgets/news_item.dart';


class savedItemViews extends StatelessWidget {
  savedItemViews({super.key, required this.savedNews});

  List<news_model> savedNews;

  @override
  Widget build(BuildContext context) {
    return SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: savedNews!.length,
            (context, index) {
              return news_item(item: savedNews![index],);
            },
          ),
    );
  }

}
