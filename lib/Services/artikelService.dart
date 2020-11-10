import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_app/Models/Artikel.dart';
import 'package:flutter_app/Models/ArtikelDetail.dart';
import 'package:http/http.dart';

class ArtikelService {
  final String artikelListURL =
      "http://52.40.55.251/tebetandro/api/index.php/Api/getArticleList";
  final String artikelDetailURL =
      "http://52.40.55.251/tebetandro/api/index.php/Api/getArticle?id=";

  Future<List<Artikel>> getArtikel() async {
    Response res = await get(artikelListURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Artikel> posts = body
          .map(
            (dynamic item) => Artikel.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Can't get posts.";
    }
  }

  Future<ArtikelDetail> getArtikelDetail(String id) async {
    Response res = await get(artikelDetailURL);

    if (res.statusCode == 200) {
      return ArtikelDetail.fromJson(jsonDecode(res.body));
    } else {
      throw "Can't get posts.";
    }
  }

  List<Artikel> parseArtikelList(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Artikel>((json) => Artikel.fromJson(json)).toList();
  }

  Future<List<Artikel>> fetchArtikelList() async {
    final response = await get(artikelListURL);

    return compute(parseArtikelList, response.body);
  }
}
