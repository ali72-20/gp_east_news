import 'package:flutter/material.dart';
import 'package:gp_east_news/presentation_layer/UI/News/interaction.dart';
import 'package:gp_east_news/presentation_layer/UI/News/news_image.dart';
import 'package:gp_east_news/presentation_layer/UI/News/news_model.dart';
import 'package:gp_east_news/presentation_layer/UI/colors/colors.dart';

class news_details extends StatelessWidget {
  news_details({super.key, required this.item});

  news_model item;

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
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                item.title,
                style: const TextStyle(
                    color: Colors.white, fontFamily: 'Poppins', fontSize: 16),
              ),
              background: Image.asset(
                item.image,
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Text('gfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijklgfgdhgfhgfhfghfgtguyhijkl', style: const TextStyle(color: Colors.white),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
