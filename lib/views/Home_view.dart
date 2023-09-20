import 'package:flutter/material.dart';

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
          child: Text("Sports"),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/sports.avif")),
          ),
        ),
      ),
    );
  }
}
