import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Artikel.dart';
import 'package:flutter_app/Services/artikelService.dart';

import 'artikelDetailPage.dart';

class ArtikelPage extends StatelessWidget {
  final ArtikelService artikelService = ArtikelService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Artikel"),
      ),
      body: FutureBuilder(
        future: artikelService.getArtikel(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Artikel>> snapshot) {
          if (snapshot.hasData) {
            List<Artikel> posts = snapshot.data;
            return ListView(
              children: posts
                  .map(
                    (Artikel post) => Card(
                  elevation: 6,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.purple,
                              Colors.deepPurpleAccent
                            ])),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      leading: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "${post.bulan}",
                              style: TextStyle(fontSize: 20.0, color: Colors.white),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "${post.tanggal}",
                              style: TextStyle(fontSize: 25.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white,),
                      title: Text("${post.judul}",
                          style: TextStyle(fontSize: 20.0, color: Colors.white)),
                      subtitle: Text("${post.name}",
                          style: TextStyle(fontSize: 16.0, color: Colors.white)),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ArtikelDetailPage(
                            artikel: post,
                          ),
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
