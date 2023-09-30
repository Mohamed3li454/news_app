import 'package:flutter/material.dart';
import 'package:news_app/items/news_listview_builder.dart';

// ignore: camel_case_types
class category_view extends StatelessWidget {
  const category_view({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          new_listview_biulder(category: category),
        ],
      ),
    );
  }
}
