import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../News/presentation_layer/views/news_list.dart';

class FragementBody extends StatefulWidget {
  const FragementBody({super.key});

  @override
  State<FragementBody> createState() => _FragementBodyState();
}

class _FragementBodyState extends State<FragementBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          news_list(),
        ],
      ),
    );
  }
}
