/*
* {"id":"12","tanggal":"18","tahun":"2019","bulan":"July","name":"Pdt Ebenezer Lumban Gaol","judul":"Kisah Inspiratif Buku Ende: PAROHON HARAJAONMI"}
* */

class Notes {
  final String id;
  final String tanggal;
  final String tahun;
  final String bulan;
  final String name;
  final String judul;

  Notes({this.id, this.tanggal, this.tahun, this.bulan, this.name, this.judul});

  factory Notes.fromJson(Map<String, dynamic> json) {
    return Notes(
      id: json['id'],
      tanggal: json['tanggal'],
      tahun: json['tahun'],
      bulan: json['bulan'],
      name: json['name'],
      judul: json['judul'],
    );
  }
}
