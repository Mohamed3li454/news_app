import 'package:flutter/material.dart';
import 'package:news_app/items/Cards_item.dart';
import 'package:news_app/models/card_model.dart';

// ignore: must_be_immutable, camel_case_types
class listview_item extends StatelessWidget {
  listview_item({
    super.key,
  });
  List<CardMdel> cardsview = [
    CardMdel(text: "", image: "assets/Sports.jpeg"),
    CardMdel(text: "", image: "assets/business.jpeg"),
    CardMdel(text: "", image: "assets/entertainment.jpeg"),
    CardMdel(text: "", image: "assets/health.jpeg"),
    CardMdel(text: "Science", image: "assets/science.jpeg"),
    CardMdel(text: "", image: "assets/tech.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: ListView.builder(
        itemCount: cardsview.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card_item(cards: cardsview[index]);
        },
      ),
    );
  }
}
