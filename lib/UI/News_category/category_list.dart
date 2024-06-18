import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/UI/Forms/FormComponent%20/TextComp.dart';
import 'package:gp_east_news/UI/News_category/item_model.dart';
import 'package:gp_east_news/UI/News_category/items_list.dart';
import 'package:gp_east_news/UI/colors/colors.dart';
import 'package:gp_east_news/UI/home.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primary_color,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const SizedBox(height: 20,),
            Image.asset('assets/Images/SeletedCategory.png',),
            const SizedBox(height: 24,),
            TextComp(
                message: 'SHARE WITH US YOUR INTEREST',
                message_color: Colors.white,
                size: 16),
            items_list(
              item: item_model(
                  Category_image: 'assets/Images/sports.png',
                  Category_name: 'Sports'),
            ),
            items_list(
              item: item_model(
                  Category_image: 'assets/Images/Politics.png',
                  Category_name: 'Politics'),
            ),
            items_list(
              item: item_model(
                  Category_image: 'assets/Images/Science.png',
                  Category_name: 'Science'),
            ),
            items_list(
              item: item_model(
                  Category_image: 'assets/Images/technology.png',
                  Category_name: 'Technology'),
            ),
            items_list(
              item: item_model(
                  Category_image: 'assets/Images/Business.png',
                  Category_name: 'Business'),
            ),
            const SizedBox(height: 24,),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => const home()));
                },
                child: const Icon(
                  Icons.arrow_circle_right,
                  color: Colors.white,
                  size: 48,
                )),
          ],
        ));
  }
}
