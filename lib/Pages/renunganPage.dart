import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Renungan.dart';
import 'package:flutter_app/Pages/renunganDetailPage.dart';
import 'package:flutter_app/Services/renunganService.dart';

class RenunganPage extends StatelessWidget {
  final RenunganService renunganService = RenunganService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RENUNGAN HARIAN"),
      ),
      body: FutureBuilder(
        future: renunganService.getRenungan(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Renungan>> snapshot) {
          if (snapshot.hasData) {
            List<Renungan> posts = snapshot.data;
            return ListView(
              children: posts
                  .map(
                    (Renungan post) => Card(
                      elevation: 6,
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        leading: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "${post.bulan}",
                                style: TextStyle(fontSize: 20.0),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "${post.tanggal}",
                                style: TextStyle(fontSize: 25.0),
                              ),
                            ],
                          ),
                        ),
                        title: Text("${post.judul}"),
                        subtitle: Text("${post.name}"),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => RenunganDetailPage(
                              renungan: post,
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
