// ignore: camel_case_types
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/items/news_listview.dart';
import 'package:news_app/models/articals_model.dart';
import 'package:news_app/services/news_sevice.dart';

// ignore: camel_case_types
class new_listview_biulder extends StatefulWidget {
  const new_listview_biulder({super.key, required this.category});
  final String category;
  @override
  State<new_listview_biulder> createState() => _new_listview_biulderState();
}

// ignore: camel_case_types
class _new_listview_biulderState extends State<new_listview_biulder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    super.initState();
    future = News_Service(Dio()).getnews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articals_model>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return News_list_view(
            articals: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text("Oops There has a Eror"),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
