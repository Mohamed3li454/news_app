import 'package:flutter/material.dart';
import 'package:news_app/models/articals_model.dart';

// ignore: camel_case_types
class News_item extends StatelessWidget {
  const News_item({super.key, required this.articalsmodel});
  final Articals_model articalsmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articalsmodel.image != null
              ? Image.network(articalsmodel.image!,
                  fit: BoxFit.fill, height: 200, width: double.infinity)
              : Image.asset("assets/image_not_available.png"),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(articalsmodel.title ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
        Text(
          articalsmodel.subtitle ?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        )
      ],
    );
  }
}
