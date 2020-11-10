class NotesDetail {
  final String author_id;
  final String content;
  final String created_at;
  final String id;
  final String image;
  final String image_id;
  final String judul;
  final String mail;
  final String name;
  final String nats;
  final String phone;
  final String status;
  final String tanggal;
  final String updated_at;
  final String updated_by;

  NotesDetail({
    this.author_id,
    this.content,
    this.created_at,
    this.id,
    this.image,
    this.image_id,
    this.judul,
    this.mail,
    this.name,
    this.nats,
    this.phone,
    this.status,
    this.tanggal,
    this.updated_at,
    this.updated_by,
  });

  factory NotesDetail.fromJson(Map<String, dynamic> json) {
    return NotesDetail(
      author_id: json['author_id'],
      content: json['content'],
      created_at: json['created_at'],
      id: json['id'],
      image: json['image'],
      image_id: json['image_id'],
      judul: json['judul'],
      mail: json['mail'],
      name: json['name'],
      nats: json['nats'],
      phone: json['phone'],
      status: json['status'],
      tanggal: json['tanggal'],
      updated_at: json['updated_at'],
      updated_by: json['updated_by'],
    );
  }
}
