import 'package:flutter/material.dart';
import 'package:gp_east_news/Feature/Fragmetns/saved/presentation_layer/views/widgets/getSavedNews.dart';


class saved_fragment extends StatefulWidget {
   saved_fragment({super.key,});

  @override
  State<saved_fragment> createState() => _saved_fragmentState();
}

class _saved_fragmentState extends State<saved_fragment> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          getSavedNews(),
        ],
      ),
    );
  }
}




