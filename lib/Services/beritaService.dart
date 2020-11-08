import 'dart:convert';

import 'package:flutter_app/Models/Berita.dart';
import 'package:http/http.dart';

class BeritaService{
  final String beritaListURL = "http://52.40.55.251/tebetandro/api/index.php/Api/getBeritaList";

  Future<List<Berita>> getBerita() async {
    Response res = await get(beritaListURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Berita> posts = body
          .map(
            (dynamic item) => Berita.fromJson(item),
      )
          .toList();

      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
}