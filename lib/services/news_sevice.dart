// ignore: file_names, camel_case_types
import 'package:dio/dio.dart';
import 'package:news_app/models/articals_model.dart';

// ignore: camel_case_types
class News_Service {
  News_Service(this.dio);
  final Dio dio;

  getnews() async {
    // ignore: unused_local_variable
    var response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=a27c080961c145d5b64a7242f039458f");
    // ignore: unused_local_variable
    Map<String, dynamic> jsondata = response.data;
    List<dynamic> articles = jsondata['articles'];
    for (var artical in articles) {
      Articals_model articalslist = Articals_model(
          image: artical["urlToImage"],
          title: artical["title"],
          subtitle: artical["description"]);
      articles.add(articalslist);
    }
  }
}
