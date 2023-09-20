import 'package:flutter/material.dart';

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
        body: Container(
          height: 150,
          width: 100,
          // ignore: sort_child_properties_last
          child: const Center(
            child: Text("Sports"),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                image: AssetImage("assets/technology.jpeg")),
          ),
        ),
      ),
    );
  }
}
