class Berita{
  final String id;
  final String kategori;
  final String judul;
  final String content;
  final String tanggal;
  final String created_by;
  final String created_at;
  final String updated_at;

  Berita({this.id,this.kategori,this.judul,this.content,this.tanggal,this.created_by,this.created_at,this.updated_at});

  factory Berita.fromJson(Map<String, dynamic> json) {
    return Berita(
      id: json['id'],
      kategori: json['kategori'],
      judul: json['judul'],
      content: json['content'],
      tanggal: json['tanggal'],
      created_by: json['created_by'],
      created_at: json['created_at'],
      updated_at: json['updated_at']
    );
  }
}