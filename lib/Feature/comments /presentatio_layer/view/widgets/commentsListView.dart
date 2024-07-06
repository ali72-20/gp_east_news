import 'package:flutter/cupertino.dart';
import 'package:gp_east_news/Feature/comments%20/presentatio_layer/view/widgets/comment_item_view.dart';

import '../../../data_layer/model/commentModel.dart';

class commentListView extends StatefulWidget {
   commentListView({super.key, required this.list});
   List<commentModel> list;
  @override
  State<commentListView> createState() => _commentListViewState();
}


class _commentListViewState extends State<commentListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context,index){
         return SingleChildScrollView(child: commentItemView(model: widget.list[index],));
      },
    );
  }
}
