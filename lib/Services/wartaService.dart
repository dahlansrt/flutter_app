import 'dart:convert';
import 'package:flutter_app/Models/Warta.dart';
import 'package:http/http.dart';

class WartaService {
  final String wartaURL =
      "http://52.40.55.251/tebetandro/api/index.php/Api/getwarta";

  Future<Warta> getWarta() async {
    Response res = await get(wartaURL);

    if (res.statusCode == 200) {
      return Warta.fromJson(jsonDecode(res.body));
    } else {
      throw "Can't get posts.";
    }
  }
}
