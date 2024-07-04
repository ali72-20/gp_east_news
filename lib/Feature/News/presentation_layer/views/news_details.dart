import 'package:flutter/material.dart';
import 'package:gp_east_news/Core/app_rounded_blur.dart';
import 'package:gp_east_news/Feature/News/presentation_layer/views/widgets/menu_component.dart';
import 'package:gp_east_news/Feature/interactions%20/presentation_layer/views/interaction.dart';
import 'package:gp_east_news/Feature/interactions%20/presentation_layer/views/widgets/comment_icon_component.dart';
import 'package:gp_east_news/Feature/interactions%20/presentation_layer/views/widgets/like_component.dart';
import 'package:gp_east_news/Feature/interactions%20/presentation_layer/views/widgets/saved_item_icon_compontent.dart';
import '../../../../Core/Assets/assets_data.dart';
import '../../../../colors/colors.dart';
import '../../../interactions /presentation_layer/views/comments_view.dart';
import '../../Data_layer/Api/news_servieces/news_model.dart';

class news_details extends StatelessWidget {
  news_details({super.key, required this.item, this.is_comment});

  news_model item;
  bool? is_comment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_color,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: primary_color,
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
              pinned: true,
              floating: true,
              expandedHeight: 400,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  item.title == null ? 'title' : item.title!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 8,
                  ),
                ),
                background: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Image.network(
                    excludeFromSemantics: true,
                    item.image == null
                        ? Assetsdata().defualtImage
                        : item.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    likeComponent(isLiked: item.isLiked, likes: item.likes),
                    commentItemComponent(comments: item.comments),
                    savedItemIcon(isSaved: item.isSaved),
                    menuComponent()
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(
                    item.content ?? 'Artrical title',
                    style: const TextStyle(
                        color: Colors.black, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
