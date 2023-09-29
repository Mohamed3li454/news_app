// ignore: camel_case_types
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/items/news_listview.dart';
import 'package:news_app/services/news_sevice.dart';

// ignore: camel_case_types
class new_listview_biulder extends StatelessWidget {
  const new_listview_biulder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: News_Service(Dio()).getnews(),
      builder: (context, snapshot) {
        return News_list_view(
          articals: snapshot.data ?? [],
        );
      },
    );
  }
}
