class Warta {
  final String id;
  final String kategori;
  final String judul;
  final String content;
  final String tanggal;
  final String created_at;
  final String created_by;

  Warta(
      {this.id, this.kategori, this.judul, this.content, this.tanggal, this.created_at, this.created_by});

  factory Warta.fromJson(Map<String, dynamic> json) {
    return Warta(
      id: json['id'],
      kategori: json['kategori'],
      judul: json['judul'],
      content: json['content'],
      tanggal: json['tanggal'],
      created_at: json['created_at'],
      created_by: json['created_by'],
    );
  }
}