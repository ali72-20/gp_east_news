import 'package:flutter/material.dart';
import 'package:gp_east_news/Feature/Main/Presentation_layer/views/mainScreen.dart';
import 'package:gp_east_news/Feature/News/Data_layer/Api/news_servieces/news_model.dart';
import '../../../../../Core/Assets/assets_data.dart';
import '../../../../../colors/colors.dart';


class newsSliverAppBar extends StatelessWidget {
  newsSliverAppBar({super.key, required this.item, required this.screen});
  news_model item;
  int screen;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.white,), onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context)=> main_screen(current_fragmnet_index: screen)));
      },),
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
            fontFamily: kPrimaryFont,
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
                ? defualtImage
                : item.image!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
