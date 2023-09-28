import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/items/news_item.dart';
import 'package:news_app/models/articals_model.dart';
import 'package:news_app/services/news_sevice.dart';

// ignore: camel_case_types
class News_list_view extends StatefulWidget {
  const News_list_view({
    super.key,
  });

  @override
  State<News_list_view> createState() => _News_list_viewState();
}

// ignore: camel_case_types
class _News_list_viewState extends State<News_list_view> {
  List<Articals_model> articals = [];
  @override
  void initState() {
    super.initState();
    getGenralnews();
  }

  Future<void> getGenralnews() async {
    articals = await News_Service(Dio()).getnews();
    setState(() {});
  }

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
