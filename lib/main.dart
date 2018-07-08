import 'package:flutter/material.dart';
import 'data/handbook.dart';

void main() => runApp(new AppRoot());

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appTitle,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.white,
      ),
      home: new MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(handbookCurrentTitle),
      ),
      body: new Center(
        child: new Text("A"),
      ),
      // bottomNavigationBar: new TabBar(
      //   tabs: <Widget>[
      //     new Tab(
      //       text: "A",
      //     ),
      //     new Tab(
      //       text: "B"
      //     ),
      //   ],
      // ),
      drawer: new Drawer(
        child: new ListView(
          primary: false,
          children: <Widget>[
            new Container(
              color: Colors.blue,
              child: new ListTile(
                leading: new Icon(Icons.watch_later,
                    color: themeData.primaryTextTheme.title.color),
                title: new Text('Settings',
                    style: themeData.primaryTextTheme.title),
              ),
            ),
            new AboutListTile(
              applicationName: 'name1',
              applicationVersion: '0.1',
              applicationLegalese: 'legal',
              child: new Text("About",),
            ),
            const ListTile(
              leading: const Icon(null),
              title: const Text("option 1"),
            ),
            const ListTile(
              title: const Text('option 2'),
            ),
          ],
        ),
      ),
    );
  }
}
