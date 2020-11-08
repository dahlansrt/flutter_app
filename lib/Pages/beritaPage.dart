import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Berita.dart';
import 'package:flutter_app/Pages/beritaDetailPage.dart';
import 'package:flutter_app/Services/beritaService.dart';

class BeritaPage extends StatelessWidget {
  final BeritaService beritaService = BeritaService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita"),
      ),
      body: FutureBuilder(
        future: beritaService.getBerita(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Berita>> snapshot) {
          if (snapshot.hasData) {
            List<Berita> posts = snapshot.data;
            return ListView(
              children: posts
                  .map(
                    (Berita post) => Card(
                  elevation: 6,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    leading: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.schedule),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text("${post.judul}"),
                    subtitle: Text("${post.tanggal}"),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BeritaDetailPage(
                          berita: post,
                        ),
                      ),
                    ),
                  ),
                ),
              )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}