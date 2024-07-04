import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/Feature/News/Data_layer/Api/news_servieces/news_model.dart';

import '../../../../../Core/Assets/assets_data.dart';
import '../../../../../colors/colors.dart';

class newsSliverAppBar extends StatelessWidget {
  newsSliverAppBar({super.key, required this.item});
  news_model item;
  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
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
    );
  }
}
