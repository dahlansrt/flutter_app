import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Berita.dart';

class BeritaDetailPage extends StatelessWidget {
  final Berita berita;
  BeritaDetailPage({@required this.berita});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(berita.judul),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(berita.content, style: TextStyle(fontSize: 20),)
        ),
      ),
    );
  }
}
