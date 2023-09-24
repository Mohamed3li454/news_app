import 'package:flutter/material.dart';
import 'package:news_app/items/News_item.dart';

// ignore: camel_case_types
class News_list_view extends StatelessWidget {
  const News_list_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: News_item(),
          );
        },
      ),
    );
  }
}
