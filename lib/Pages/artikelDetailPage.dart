import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Artikel.dart';
import 'package:flutter_app/Models/ArtikelDetail.dart';
import 'package:flutter_app/Services/artikelService.dart';

class ArtikelDetailPage extends StatelessWidget {
  final Artikel artikel;
  final ArtikelService artikelService = ArtikelService();

  ArtikelDetailPage({@required this.artikel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(artikel.judul),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.purple,
                Colors.purpleAccent,
                Colors.deepPurple
              ])),
          padding: const EdgeInsets.all(12.0),
          child: FutureBuilder(
            future: artikelService.getArtikelDetail(artikel.id),
            builder:
                (BuildContext context, AsyncSnapshot<ArtikelDetail> snapshot) {
              if (snapshot.hasData) {
                ArtikelDetail rd = snapshot.data;
                return Text(rd.content,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
