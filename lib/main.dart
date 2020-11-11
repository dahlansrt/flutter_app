import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/artikelPage.dart';
import 'package:flutter_app/Pages/beritaPage.dart';
import 'package:flutter_app/Pages/notesPage.dart';
import 'package:flutter_app/Pages/renunganPage.dart';
import 'package:flutter_app/Pages/tataIbadahPage.dart';
import 'package:flutter_app/Pages/videoPage.dart';
import 'package:flutter_app/Pages/wartaPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'HKBP Tebet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Sample
  List imageList = [
    "http://52.40.55.251/tebetandro/cms/assets/uploads/album/Karyawan/1.jpeg",
    "http://52.40.55.251/tebetandro/cms/assets/uploads/album/Karyawan/2.jpeg",
    "http://52.40.55.251/tebetandro/cms/assets/uploads/album/Karyawan/3.jpeg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/08/09/21/54/yellowstone-national-park-1581879_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/07/11/15/43/pretty-woman-1509956_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/11/28/10/03/autumn-219972_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/17/19/08/away-3024773_960_720.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Wrap(
            children: [
              Text(widget.title,
                  style:
                      TextStyle(fontSize: 36.0, fontWeight: FontWeight.w600)),
              Text("JL Tebet Barat Dalam X No.7",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic)),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: new EdgeInsets.all(10.0),
          child: new Center(
            child: new Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Card(
                  color: Colors.deepPurple,
                  elevation: 8,
                  child: new Container(
                    padding: new EdgeInsets.all(16.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          'MINGGU LETARE: 22 MARET 2020',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        new Text(
                          'SUKACITA DALAM TUHAN',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                new Card(
                  elevation: 8,
                  child: new Container(
                    padding: new EdgeInsets.all(8.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Container(
                              width: 100,
                              height: 100,
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    child: new Ink(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              begin: Alignment.topRight,
                                              end: Alignment.bottomLeft,
                                              colors: [
                                                Colors.purple,
                                                Colors.purpleAccent,
                                                Colors.deepPurple,
                                                Colors.deepPurpleAccent
                                              ]),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                  0.5), //color of shadow
                                              spreadRadius: 5, //spread radius
                                              blurRadius: 7, // blur radius
                                              offset: Offset(0, 2),
                                            )
                                          ]),
                                      child: IconButton(
                                        iconSize:40,
                                        icon: Icon(Icons.menu_book),
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RenunganPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'RENUNGAN',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              width: 100,
                              height: 100,
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.purple,
                                              Colors.purpleAccent,
                                              Colors.deepPurple,
                                              Colors.deepPurpleAccent
                                            ]),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), //color of shadow
                                            spreadRadius: 5, //spread radius
                                            blurRadius: 7, // blur radius
                                            offset: Offset(0, 2),
                                          )
                                        ]),
                                    child: new Ink(
                                      child: IconButton(
                                        iconSize: 40,
                                        icon: Icon(Icons.message),
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BeritaPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'BERITA',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              width: 100,
                              height: 100,
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.purple,
                                              Colors.purpleAccent,
                                              Colors.deepPurple,
                                              Colors.deepPurpleAccent
                                            ]),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), //color of shadow
                                            spreadRadius: 5, //spread radius
                                            blurRadius: 7, // blur radius
                                            offset: Offset(0, 2),
                                          )
                                        ]),
                                    child: new Ink(
                                      child: IconButton(
                                        iconSize: 40,
                                        icon: Icon(Icons.call),
                                        color: Colors.white,
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'HUBUNGI',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Container(
                              width: 100,
                              height: 100,
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.purple,
                                              Colors.purpleAccent,
                                              Colors.deepPurple,
                                              Colors.deepPurpleAccent
                                            ]),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), //color of shadow
                                            spreadRadius: 5, //spread radius
                                            blurRadius: 7, // blur radius
                                            offset: Offset(0, 2),
                                          )
                                        ]),
                                    child: new Ink(
                                      child: IconButton(
                                        iconSize: 40,
                                        icon: Icon(Icons.video_library),
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    VideoPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'VIDEO',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              width: 100,
                              height: 100,
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.purple,
                                              Colors.purpleAccent,
                                              Colors.deepPurple,
                                              Colors.deepPurpleAccent
                                            ]),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), //color of shadow
                                            spreadRadius: 5, //spread radius
                                            blurRadius: 7, // blur radius
                                            offset: Offset(0, 2),
                                          )
                                        ]),
                                    child: new Ink(
                                      child: IconButton(
                                        iconSize: 40,
                                        icon: Icon(Icons.article),
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ArtikelPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'ARTIKEL',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              width: 100,
                              height: 100,
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.purple,
                                              Colors.purpleAccent,
                                              Colors.deepPurple,
                                              Colors.deepPurpleAccent
                                            ]),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), //color of shadow
                                            spreadRadius: 5, //spread radius
                                            blurRadius: 7, // blur radius
                                            offset: Offset(0, 2),
                                          )
                                        ]),
                                    child: new Ink(
                                      child: IconButton(
                                        iconSize: 40,
                                        icon: Icon(Icons.text_snippet),
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    NotesPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'PASTOR NOTES',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Container(
                              width: 100,
                              height: 100,
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.purple,
                                              Colors.purpleAccent,
                                              Colors.deepPurple,
                                              Colors.deepPurpleAccent
                                            ]),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), //color of shadow
                                            spreadRadius: 5, //spread radius
                                            blurRadius: 7, // blur radius
                                            offset: Offset(0, 2),
                                          )
                                        ]),
                                    child: new Ink(
                                      child: IconButton(
                                        iconSize: 40,
                                        icon: Icon(
                                          Icons.library_music,
                                        ),
                                        color: Colors.white,
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'BUKU ENDE',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              width: 100,
                              height: 100,
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.purple,
                                              Colors.purpleAccent,
                                              Colors.deepPurple,
                                              Colors.deepPurpleAccent
                                            ]),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), //color of shadow
                                            spreadRadius: 5, //spread radius
                                            blurRadius: 7, // blur radius
                                            offset: Offset(0, 2),
                                          )
                                        ]),
                                    child: new Ink(
                                      child: IconButton(
                                        iconSize: 40,
                                        icon:
                                            Icon(Icons.local_library_outlined),
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    WartaPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'WARTA JEMAAT',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              width: 100,
                              height: 100,
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.purple,
                                              Colors.purpleAccent,
                                              Colors.deepPurple,
                                              Colors.deepPurpleAccent
                                            ]),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.5), //color of shadow
                                            spreadRadius: 5, //spread radius
                                            blurRadius: 7, // blur radius
                                            offset: Offset(0, 2),
                                          )
                                        ]),
                                    child: new Ink(
                                      child: IconButton(
                                        iconSize: 40,
                                        icon: Icon(Icons.list_alt),
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TataIbadahPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'TATA IBADAH',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                new Card(
                  elevation: 6,
                  child: new Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment
                          .bottomRight, // 10% of the width, so there are ten blinds.
                      colors: [
                        Colors.purple,
                        Colors.deepPurple,
                        Colors.deepPurpleAccent
                      ], // red to yellow
                      tileMode: TileMode.repeated,
                    )),
                    //color: Colors.deepPurple,
                    padding: new EdgeInsets.all(32.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          'BERITA HKBP TEBET',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        new Text(
                          'SUKACITA DALAM TUHAN',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 4),
                new SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemBuilder: (BuildContext ctx, int index) {
                      return Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          imageList[index],
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 6,
                        margin: EdgeInsets.all(10),
                      );
                      //return Image.network(imageList[index]);
                    },
                    //physics: ClampingScrollPhysics(),
                    //shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: imageList.length,
                  ),
                ),
              ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
            ));
  }
}
