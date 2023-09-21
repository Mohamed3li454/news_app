import 'package:flutter/material.dart';
import 'package:news_app/items/listview_item.dart';

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
        body: listview_item(),
      ),
    );
  }
}
