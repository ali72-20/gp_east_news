import 'package:flutter/src/material/tabs.dart';
import 'tap_item.dart';
class TabsList{
  static List<Tab> list = [
    Tab(
      child: tap_item(
        title: "All",
      ),
    ),
    Tab(
      child: tap_item(
        title: "Sports",
      ),
    ),
    Tab(
      child: tap_item(
        title: "Politics",
      ),
    ),
    Tab(
      child: tap_item(
        title: "Business",
      ),
    ),
    Tab(
      child: tap_item(
        title: "Science",
      ),
    ),
    Tab(
      child: tap_item(
        title: "Technology",
      ),
    ),
  ];
}