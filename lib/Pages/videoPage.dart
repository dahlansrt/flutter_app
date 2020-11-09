import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Video.dart';
import 'package:flutter_app/Services/videoService.dart';

class VideoPage extends StatelessWidget {
  final VideoService videoService = VideoService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
      ),
      body: FutureBuilder(
        future: videoService.getVideo(),
        builder: (BuildContext context, AsyncSnapshot<List<Video>> snapshot) {
          if (snapshot.hasData) {
            List<Video> posts = snapshot.data;
            return ListView(
              children: posts
                  .map((Video post) => Center(
                        child: Card(
                          elevation: 8,
                          child: InkWell(
                            splashColor: Colors.deepPurple.withAlpha(30),
                            onTap: () {
                              print("tap");
                            },
                            child: Image.network(
                                'https://img.youtube.com/vi/IcdvYtrUNvs/0.jpg',
                                loadingBuilder: (context, child, progress) {
                              return progress == null
                                  ? child
                                  : LinearProgressIndicator();
                            }, fit: BoxFit.cover),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          margin: EdgeInsets.all(10),
                        ),
                      ))
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
