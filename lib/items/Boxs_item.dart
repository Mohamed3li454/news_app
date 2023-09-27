// ignore: file_names
import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';

// ignore: camel_case_types
class Card_item extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Card_item({required this.cards});
  final CardMdel cards;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        width: 150,
        // ignore: sort_child_properties_last
        child: Text(
          cards.text!,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(cards.image),
          ),
        ),
      ),
    );
  }
}
