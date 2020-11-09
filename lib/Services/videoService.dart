import 'dart:convert';

import 'package:flutter_app/Models/Berita.dart';
import 'package:flutter_app/Models/Video.dart';
import 'package:http/http.dart';

class VideoService{
  final String videoListURL = "http://52.40.55.251/tebetandro/api/index.php/Api/getVideoList";

  Future<List<Video>> getVideo() async {
    Response res = await get(videoListURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Video> posts = body
          .map(
            (dynamic item) => Video.fromJson(item),
      )
          .toList();

      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
}