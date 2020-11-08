import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Renungan.dart';
import 'package:flutter_app/Models/RenunganDetail.dart';
import 'package:flutter_app/Services/renunganService.dart';

class RenunganDetailPage extends StatelessWidget {
  final Renungan renungan;
  final RenunganService renunganService = RenunganService();

  RenunganDetailPage({@required this.renungan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(renungan.judul),
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
                Colors.deepPurple,
              ])),
          padding: const EdgeInsets.all(12.0),
          child: FutureBuilder(
            future: renunganService.getRenunganDetail(renungan.id),
            builder:
                (BuildContext context, AsyncSnapshot<RenunganDetail> snapshot) {
              if (snapshot.hasData) {
                RenunganDetail rd = snapshot.data;
                return Text(rd.content,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white));
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
