class Video {
  final String id;
  final String url;
  final String tanggal;
  final String tahun;
  final String bulan;
  final String name;
  final String image;
  final String judul;

  Video(
      {this.id,
      this.url,
      this.tanggal,
      this.tahun,
      this.bulan,
      this.name,
      this.image,
      this.judul});

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id'],
      url: json['json'],
      tanggal: json['tanggal'],
      tahun: json['tahun'],
      bulan: json['bulan'],
      name: json['name'],
      image: json['image'],
      judul: json['judul'],
    );
  }
}
