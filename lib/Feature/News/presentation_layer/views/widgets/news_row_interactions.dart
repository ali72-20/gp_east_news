import 'package:flutter/cupertino.dart';
import 'package:gp_east_news/Feature/News/Data_layer/Api/news_servieces/news_model.dart';

import '../../../../interactions /presentation_layer/views/widgets/comment_icon_component.dart';
import '../../../../interactions /presentation_layer/views/widgets/like_component.dart';
import '../../../../interactions /presentation_layer/views/widgets/saved_item_icon_compontent.dart';
import '../../../../summary/presentation_layer/views/widgets/summary_icon_component.dart';

class newsRowIneractions extends StatelessWidget {
   newsRowIneractions({super.key, required this.item});
  news_model item;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            likeComponent(isLiked: item.isLiked, likes: item.likes),
            commentItemComponent(comments: item.comments),
            savedItemIcon(articalId: item.id),
            summaryIconComponent(content: item.content??'content'),
          ],
        ),
      ),
    );
  }
}
