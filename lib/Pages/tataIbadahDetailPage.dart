import 'package:flutter/material.dart';
import 'package:flutter_app/Models/TataIbadah.dart';

class TataIbadahDetailPage extends StatefulWidget {
  final TataIbadah tataIbadah;
  TabController _tabController;
  TataIbadahDetailPage({@required this.tataIbadah});

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TataIbadahDetailPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tataIbadah.nama_minggu),
        bottom: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.access_time), text: "06:00 WIB"),
            Tab(icon: Icon(Icons.access_time), text: "09:00 WIB"),
            Tab(icon: Icon(Icons.access_time), text: "15:00 WIB"),
            Tab(icon: Icon(Icons.access_time), text: "18:00 WIB")
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                    Colors.purple,
                    Colors.purpleAccent,
                    Colors.deepPurple,
                    Colors.deepPurpleAccent
                  ])),
              padding: new EdgeInsets.all(20.0),
              child: Text(
                widget.tataIbadah.tata_ibadah_18,
                style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          WillPopScope(
            onWillPop: () async {
              tabController.animateTo(
                0,
                duration: Duration(milliseconds: 500),
              );
              return false;
            },
            child: SingleChildScrollView(
              child: Container(
                padding: new EdgeInsets.all(20.0),
                child: Text(
                  widget.tataIbadah.tata_ibadah_9,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
          WillPopScope(
            onWillPop: () async {
              tabController.animateTo(
                1,
                duration: Duration(milliseconds: 500),
              );
              return false;
            },
            child: SingleChildScrollView(
              child: Container(
                padding: new EdgeInsets.all(20.0),
                child: Text(
                  widget.tataIbadah.tata_ibadah_15,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
          WillPopScope(
              onWillPop: () async {
                tabController.animateTo(
                  2,
                  duration: Duration(milliseconds: 500),
                );
                return false;
              },
              child: SingleChildScrollView(
                child: Container(
                  padding: new EdgeInsets.all(20.0),
                  child: Text(
                    widget.tataIbadah.tata_ibadah_18,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
