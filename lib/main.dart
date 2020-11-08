import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/renunganPage.dart';
import 'package:flutter_app/Pages/tataIbadahPage.dart';
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
        primarySwatch: Colors.deepPurple,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: new EdgeInsets.all(8.0),
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Card(
                  elevation: 6,
                  child: new Container(
                    padding: new EdgeInsets.all(16.0),
                    child: new Column(
                      children: <Widget>[
                        new Text('MINGGU LETARE: 22 MARET 2020'),
                        new Text('SUKACITA DALAM TUHAN')
                      ],
                    ),
                  ),
                ),
                new Card(
                  elevation: 6,
                  child: new Container(
                    padding: new EdgeInsets.all(8.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Container(
                              padding: new EdgeInsets.all(16.0),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent)),
                              child: new Column(
                                children: <Widget>[
                                  new Ink(
                                    decoration: const ShapeDecoration(
                                        color: Colors.purple,
                                        shape: CircleBorder()),
                                    child: IconButton(
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
                                  SizedBox(height: 4),
                                  Text(
                                    'RENUNGAN',
                                    style: TextStyle(fontSize: 12.0),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              padding: new EdgeInsets.all(16.0),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent)),
                              child: new Column(
                                children: <Widget>[
                                  new Ink(
                                    decoration: const ShapeDecoration(
                                        color: Colors.purple,
                                        shape: CircleBorder()),
                                    child: IconButton(
                                      icon: Icon(Icons.message),
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'BERITA',
                                    style: TextStyle(fontSize: 12.0),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              padding: new EdgeInsets.all(16.0),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent)),
                              child: new Column(
                                children: <Widget>[
                                  new Ink(
                                    decoration: const ShapeDecoration(
                                        color: Colors.purple,
                                        shape: CircleBorder()),
                                    child: IconButton(
                                      icon: Icon(Icons.call),
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'HUBUNGI',
                                    style: TextStyle(fontSize: 12.0),
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
                              padding: new EdgeInsets.all(16.0),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent)),
                              child: new Column(
                                children: <Widget>[
                                  new Ink(
                                    decoration: const ShapeDecoration(
                                        color: Colors.purple,
                                        shape: CircleBorder()),
                                    child: IconButton(
                                      icon: Icon(Icons.video_library),
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'VIDEO',
                                    style: TextStyle(fontSize: 12.0),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              padding: new EdgeInsets.all(16.0),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent)),
                              child: new Column(
                                children: <Widget>[
                                  new Ink(
                                    decoration: const ShapeDecoration(
                                        color: Colors.purple,
                                        shape: CircleBorder()),
                                    child: IconButton(
                                      icon: Icon(Icons.article),
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'ARTIKEL',
                                    style: TextStyle(fontSize: 12.0),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              padding: new EdgeInsets.all(16.0),
                              //alignment: Alignment.center,
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent)),
                              child: new Column(
                                children: <Widget>[
                                  new Ink(
                                    decoration: const ShapeDecoration(
                                        color: Colors.purple,
                                        shape: CircleBorder()),
                                    child: IconButton(
                                      icon: Icon(Icons.text_snippet),
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'PASTOR NOTES',
                                    style: TextStyle(fontSize: 10.0),
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
                              padding: new EdgeInsets.all(16.0),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent)),
                              child: new Column(
                                children: <Widget>[
                                  new Ink(
                                    decoration: const ShapeDecoration(
                                        color: Colors.purple,
                                        shape: CircleBorder()),
                                    child: IconButton(
                                      icon: Icon(Icons.library_music),
                                      color: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'BUKU ENDE',
                                    style: TextStyle(fontSize: 12.0),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              padding: new EdgeInsets.all(16.0),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent)),
                              child: new Column(
                                children: <Widget>[
                                  new Ink(
                                    decoration: const ShapeDecoration(
                                        color: Colors.purple,
                                        shape: CircleBorder()),
                                    child: IconButton(
                                      icon: Icon(Icons.local_library_outlined),
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
                                  SizedBox(height: 4),
                                  Text(
                                    'WARTA',
                                    style: TextStyle(fontSize: 12.0),
                                  )
                                ],
                              ),
                            ),
                            new Container(
                              padding: new EdgeInsets.all(16.0),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent)),
                              child: new Column(
                                children: <Widget>[
                                  new Ink(
                                    decoration: const ShapeDecoration(
                                        color: Colors.purple,
                                        shape: CircleBorder()),
                                    child: IconButton(
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
                                  SizedBox(height: 4),
                                  Text(
                                    'TATA IBADAH',
                                    style: TextStyle(fontSize: 12.0),
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
                new Card(
                  elevation: 6,
                  child: new Container(
                    padding: new EdgeInsets.all(32.0),
                    child: new Column(
                      children: <Widget>[
                        new Text('BERITA HKBP TEBET'),
                        new Text('SUKACITA DALAM TUHAN')
                      ],
                    ),
                  ),
                ),
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