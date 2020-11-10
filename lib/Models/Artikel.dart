/*
* {"id":"12","tanggal":"18","tahun":"2019","bulan":"July","name":"Pdt Ebenezer Lumban Gaol","judul":"Kisah Inspiratif Buku Ende: PAROHON HARAJAONMI"}
* */

class Artikel {
  final String id;
  final String tanggal;
  final String tahun;
  final String bulan;
  final String name;
  final String judul;

  Artikel(
      {this.id, this.tanggal, this.tahun, this.bulan, this.name, this.judul});

  factory Artikel.fromJson(Map<String, dynamic> json) {
    return Artikel(
      id: json['id'],
      tanggal: json['tanggal'],
      tahun: json['tahun'],
      bulan: json['bulan'],
      name: json['name'],
      judul: json['judul'],
    );
  }
}
