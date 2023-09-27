import 'package:flutter/material.dart';

// ignore: camel_case_types
class News_item extends StatelessWidget {
  const News_item({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset("assets/business.jpeg",
              fit: BoxFit.fill, height: 200, width: double.infinity),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
            "dfjfhfdjkbdskjfdbkjsdfbjkfbjkdfbdjkfbdsjkbjkbjkfbjkbdsjkbdsjkfsbfjkfbkdsjbkfd",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
        const Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          "jkfkjdfbdbfkjfdsfsddsadasdasdasfdsfsdfsdfdsfdfsdfsdfsdfdsfdfbkdsf",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        )
      ],
    );
  }
}
