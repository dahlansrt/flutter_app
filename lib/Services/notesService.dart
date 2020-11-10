import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_app/Models/Notes.dart';
import 'package:flutter_app/Models/NotesDetail.dart';
import 'package:http/http.dart';

class NotesService {
  final String noteslListURL =
      "http://52.40.55.251/tebetandro/api/index.php/Api/getNotesList";
  final String notesDetailURL =
      "http://52.40.55.251/tebetandro/api/index.php/Api/getNotes?id=";

  Future<List<Notes>> getNotes() async {
    Response res = await get(noteslListURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Notes> posts = body
          .map(
            (dynamic item) => Notes.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Can't get posts.";
    }
  }

  Future<NotesDetail> getNotesDetail(String id) async {
    Response res = await get(notesDetailURL);

    if (res.statusCode == 200) {
      return NotesDetail.fromJson(jsonDecode(res.body));
    } else {
      throw "Can't get posts.";
    }
  }

  List<Notes> parsegetNotesList(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Notes>((json) => Notes.fromJson(json)).toList();
  }

  Future<List<Notes>> fetchNoteslList() async {
    final response = await get(noteslListURL);

    return compute(parsegetNotesList, response.body);
  }
}
