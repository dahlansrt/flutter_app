import 'package:flutter/foundation.dart';

/*
{
"id":"460",
"tanggal":"30",
"tahun":"2020",
"bulan":"June",
"name":"Pdt. Nekson M. Simanjuntak, MTh.",
"judul":"Meneladani Yesus Yang Rendah Hati"
}
* */
class Renungan {
  final String id;
  final String tanggal;
  final String tahun;
  final String bulan;
  final String name;
  final String judul;

  Renungan(
      {this.id, this.tanggal, this.tahun, this.bulan, this.name, this.judul});

  factory Renungan.fromJson(Map<String, dynamic> json) {
    return Renungan(
      id: json['id'],
      tanggal: json['tanggal'],
      tahun: json['tahun'],
      bulan: json['bulan'],
      name: json['name'],
      judul: json['judul'],
    );
  }
}