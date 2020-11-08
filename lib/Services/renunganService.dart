import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_app/Models/Renungan.dart';
import 'package:flutter_app/Models/RenunganDetail.dart';
import 'package:http/http.dart';

//{"id":"460","tanggal":"30","tahun":"2020","bulan":"June","name":"Pdt. Nekson M. Simanjuntak, MTh.","judul":"Meneladani Yesus Yang Rendah Hati"}
class RenunganService {
  final String renunganListURL = "http://52.40.55.251/tebetandro/api/index.php/Api/getRenunganList";
  final String renunganDetailURL = "http://52.40.55.251/tebetandro/api/index.php/Api/getRenungan";

  Future<List<Renungan>> getRenungan() async {
    Response res = await get(renunganListURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Renungan> posts = body
          .map(
            (dynamic item) => Renungan.fromJson(item),
      )
          .toList();

      return posts;
    } else {
      throw "Can't get posts.";
    }
  }

  Future<RenunganDetail> getRenunganDetail(String id) async {
    Response res = await get(renunganDetailURL);

    if (res.statusCode == 200) {
      return RenunganDetail.fromJson(jsonDecode(res.body));
    } else {
      throw "Can't get posts.";
    }
  }

  List<Renungan> parseRenunganList(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Renungan>((json) => Renungan.fromJson(json)).toList();
  }

  Future<List<Renungan>> fetchRenunganList() async{
    final response = await get(renunganListURL);

    return compute(parseRenunganList, response.body);
  }
}