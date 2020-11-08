import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_app/Models/Renungan.dart';
import 'package:flutter_app/Models/RenunganDetail.dart';
import 'package:flutter_app/Models/TataIbadah.dart';
import 'package:http/http.dart';

//{"id":"460","tanggal":"30","tahun":"2020","bulan":"June","name":"Pdt. Nekson M. Simanjuntak, MTh.","judul":"Meneladani Yesus Yang Rendah Hati"}
class TataIbadahService {
  final String tataIbadahListURL = "http://52.40.55.251/tebetandro/api/index.php/Api/getTataIbadahList";
  final String tataIbadahlURL = "http://52.40.55.251/tebetandro/api/index.php/Api/getTataIbadah";

  Future<List<TataIbadah>> getTataIbadah() async {
    Response res = await get(tataIbadahListURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<TataIbadah> posts = body
          .map(
            (dynamic item) => TataIbadah.fromJson(item),
      )
          .toList();

      return posts;
    } else {
      throw "Can't get posts.";
    }
  }

  Future<TataIbadah> getTataIbadahDetail(String id) async {
    Response res = await get(tataIbadahlURL);

    if (res.statusCode == 200) {
      return TataIbadah.fromJson(jsonDecode(res.body));
    } else {
      throw "Can't get posts.";
    }
  }
}