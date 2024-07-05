import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/Assets/assets_data.dart';
import 'package:gp_east_news/Core/Messages/toast_message.dart';
import 'package:gp_east_news/Feature/Fragmetns/saved/presentation_layer/views/widgets/saveItemView.dart';
import 'package:gp_east_news/Feature/Fragmetns/saved/presentation_layer/views/widgets/unSaved.dart';
import '../../../../../News/Data_layer/Api/news_servieces/news_model.dart';
import '../../../../../News/presentation_layer/views/widgets/news_item.dart';
import 'no_item_saved.dart';

class savedItemViews extends StatefulWidget {
  savedItemViews({super.key, required this.savedNews});

  List<news_model> savedNews;

  @override
  State<savedItemViews> createState() => _savedItemViewsState();
}

class _savedItemViewsState extends State<savedItemViews> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: widget.savedNews.length,
        (context, index) {
          return Dismissible(
            onDismissed: (direction) {
              setState(() {
                widget.savedNews.removeAt(index);
              });
            },
            confirmDismiss: (DismissDirection direction) {
              if(direction == DismissDirection.endToStart) {
                return showDialog(
                  context: context,
                  builder: (context) =>
                      unSaved(articleId: widget.savedNews[index].id));
              }else {
                return showDialog(
                  context: context,
                  builder: (context) =>
                      unSaved(articleId: widget.savedNews[index].id));
              }
            },
            background: Container(
              color: Colors.transparent,
            ),
            secondaryBackground: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            key: ValueKey<news_model>(widget.savedNews[index]),
            child: savedItemView(
              model: widget.savedNews[index],
            ),
          );
        },
      ),
    );
  }
}
