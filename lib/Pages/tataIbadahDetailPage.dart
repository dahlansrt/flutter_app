import 'package:flutter/material.dart';
import 'package:flutter_app/Models/TataIbadah.dart';

/*
class TataIbadahDetailPage extends StatelessWidget {
  final TataIbadah tataIbadah;
  TabController _tabController;
  TataIbadahDetailPage({@required this.tataIbadah});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(tataIbadah.nama_minggu),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.access_time), text: "06:00 WIB"),
                Tab(icon: Icon(Icons.access_time), text: "09:00 WIB"),
                Tab(icon: Icon(Icons.access_time), text: "15:00 WIB"),
                Tab(icon: Icon(Icons.access_time), text: "18:00 WIB")
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Text(tataIbadah.tata_ibadah_6),
              Text(tataIbadah.tata_ibadah_9),
              Text(tataIbadah.tata_ibadah_15),
              Text(tataIbadah.tata_ibadah_18),
            ],
          ),
        ),
      ),
    );
  }
}
*/

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
              padding: new EdgeInsets.all(20.0),
              child: Text(
                widget.tataIbadah.tata_ibadah_18,
                style: TextStyle(fontSize: 20.0),
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
