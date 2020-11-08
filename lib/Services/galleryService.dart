import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class GalleryService {

  //expected: https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/data.json
  //https://aloisdeniel.github.io/flutter-json-serialization/
  final String galleryURL =
      "http://52.40.55.251/tebetandro/api/index.php/Api/getGallery";

  Future<List<String>> fetchGalleryData() async {
    try {
      final response = await get(galleryURL).timeout(Duration(seconds: 5));

      if (response.statusCode == 200) {
        return compute(parseGalleryData, response.body);
      } else {
        throw Exception('Failed to load');
      }
    } on SocketException {
      throw Exception('Failed to load');
    }
  }

  List<String> parseGalleryData(String responseBody) {
    final parsed = List<String>.from(json.decode(responseBody));
    return parsed;
  }
}
