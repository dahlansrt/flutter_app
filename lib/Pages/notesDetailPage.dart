import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Notes.dart';
import 'package:flutter_app/Models/NotesDetail.dart';
import 'package:flutter_app/Services/notesService.dart';

class NotesDetailPage extends StatelessWidget {
  final Notes notes;
  final NotesService notesService = NotesService();

  NotesDetailPage({@required this.notes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(notes.judul),
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
            future: notesService.getNotesDetail(notes.id),
            builder:
                (BuildContext context, AsyncSnapshot<NotesDetail> snapshot) {
              if (snapshot.hasData) {
                NotesDetail rd = snapshot.data;
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
