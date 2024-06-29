import 'package:flutter/material.dart';
import 'package:gp_east_news/Feature/interactions%20/presentation_layer/views/interaction.dart';
import '../../../../colors/colors.dart';
import '../../Data_layer/Api/news_servieces/news_model.dart';

class news_details extends StatelessWidget {
  news_details({super.key, required this.item, this.is_comment});

  news_model item;
  bool? is_comment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: primary_color,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            pinned: true,
            floating: true,
            expandedHeight: 170,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                item.title,
                style: const TextStyle(
                    color: Colors.white, fontFamily: 'Poppins', fontSize: 16),
              ),
              background: Image.asset(
                item.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: intreaction(model: item,),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
              decoration: BoxDecoration(
                color: primary_color,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              ),
              child: const SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Text('gfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijkl', style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
