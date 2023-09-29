import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  runApp(const News_cloud());
}

// ignore: camel_case_types
class News_cloud extends StatelessWidget {
  const News_cloud({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home_view();
  }
}
