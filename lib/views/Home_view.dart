import 'package:flutter/material.dart';
import 'package:news_app/items/news_listview.dart';
import 'package:news_app/items/listview_box.dart';

// ignore: camel_case_types
class Home_view extends StatelessWidget {
  const Home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("News",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              Text("Cloud", style: TextStyle(color: Colors.orange))
            ],
          ),
        ),
        // ignore: prefer_const_constructors
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: listview_Boxs(),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 12),
                ),
                const News_list_view()
              ],
            )),
      ),
    );
  }
}
