import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Renungan.dart';
import 'package:flutter_app/Models/TataIbadah.dart';
import 'package:flutter_app/Pages/renunganDetailPage.dart';
import 'package:flutter_app/Pages/tataIbadahDetailPage.dart';
import 'package:flutter_app/Services/renunganService.dart';
import 'package:flutter_app/Services/tataIbadahService.dart';

class TataIbadahPage extends StatelessWidget {
  final TataIbadahService tataIbadahService= TataIbadahService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tata Ibadah"),
      ),
      body: FutureBuilder(
        future: tataIbadahService.getTataIbadah(),
        builder:
            (BuildContext context, AsyncSnapshot<List<TataIbadah>> snapshot) {
          if (snapshot.hasData) {
            List<TataIbadah> posts = snapshot.data;
            return ListView(
              children: posts
                  .map(
                    (TataIbadah post) => Card(
                  elevation: 6,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    leading: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(Icons.schedule),
                    ),
                    title: Text("${post.nama_minggu}"),
                    subtitle: Text("${post.arti_minggu}"),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TataIbadahDetailPage(
                          tataIbadah: post,
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
