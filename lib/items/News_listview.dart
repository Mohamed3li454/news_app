import 'package:flutter/material.dart';
import 'package:news_app/items/news_item.dart';
import 'package:news_app/models/articals_model.dart';

// ignore: camel_case_types, must_be_immutable
class News_list_view extends StatelessWidget {
  final List<Articals_model> articals;

  const News_list_view({super.key, required this.articals});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articals.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: News_item(
              articalsmodel: articals[index],
            ),
          );
        },
      ),
    );
  }
}
