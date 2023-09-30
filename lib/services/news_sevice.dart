// ignore: file_names, camel_case_types
import 'package:dio/dio.dart';
import 'package:news_app/models/articals_model.dart';

// ignore: camel_case_types
class News_Service {
  News_Service(this.dio);
  final Dio dio;

  Future<List<Articals_model>> getnews({required String category}) async {
    // ignore: unused_local_variable
    var response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=a27c080961c145d5b64a7242f039458f&category=$category");
    // ignore: unused_local_variable
    var jsondata = response.data;
    var articles = jsondata['articles'];
    List<Articals_model> articleslist = [];
    for (var artical in articles) {
      Articals_model articalmodel = Articals_model(
          image: artical["urlToImage"],
          title: artical["title"],
          subtitle: artical["description"]);
      articleslist.add(articalmodel);
    }
    return articleslist;
  }
}
