import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Warta.dart';
import 'package:flutter_app/Services/wartaService.dart';

class WartaPage extends StatelessWidget {
  final WartaService wartaService = WartaService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Warta Jemaat"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: FutureBuilder(
            future: wartaService.getWarta(),
            builder:
                (BuildContext context, AsyncSnapshot<Warta> snapshot) {
              if (snapshot.hasData) {
                Warta warta = snapshot.data;
                return Text(warta.content);
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
