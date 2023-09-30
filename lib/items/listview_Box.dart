import 'package:flutter/material.dart';
import 'package:news_app/items/boxs_item.dart';
import 'package:news_app/models/card_model.dart';

// ignore: must_be_immutable, camel_case_types
class listview_Boxs extends StatelessWidget {
  listview_Boxs({
    super.key,
  });
  List<CardMdel> cardsview = [
    CardMdel(text: "", categoryname: "sports", image: "assets/Sports.jpeg"),
    CardMdel(text: "", categoryname: "business", image: "assets/business.jpeg"),
    CardMdel(
        text: "",
        categoryname: "entertainment",
        image: "assets/entertainment.jpeg"),
    CardMdel(text: "", categoryname: "health", image: "assets/health.jpeg"),
    CardMdel(
        text: "Science", categoryname: "science", image: "assets/science.jpeg"),
    CardMdel(text: "", categoryname: "technology", image: "assets/tech.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: cardsview.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card_item(cards: cardsview[index]);
        },
      ),
    );
  }
}
