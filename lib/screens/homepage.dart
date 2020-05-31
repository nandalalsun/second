import 'package:flutter/material.dart';
import '../data/data.dart';
import './aboutpage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class HomePage extends StatelessWidget {
  var title = "Ms Word";
  @override
  Widget build(BuildContext context) {
    print(data[0]);
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.tealAccent,
                child: Center(
                  child: Text(
                    "Ms Word Guide",
                    style: TextStyle(color: Colors.black, fontSize: 25.0),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.info_outline),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return AboutPage();
                  }),
                );
              },
            ),
            ListTile(
              title: Text("Share"),
              leading: Icon(Icons.share),
              onTap: (){
               Share.share("Hi Download this Application");
              },
            ),
            ListTile(
              title: Text("Rate"),
              leading: Icon(Icons.star_border),
              onTap: (){
                 launch("https://youtube.com");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("$title"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AboutPage();
                }),
              );
            },
          )
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2.0,
          );
        },
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(data[index]["key"]),
            subtitle: Text(data[index]["use"]),
            leading: CircleAvatar(
              radius: 21.0,
              backgroundColor: Colors.lightBlueAccent,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
            ),
            trailing: Icon(Icons.content_copy),
            onTap: () {
              print("Print debug");
            },
          );
        },
      ),
    );
  }
}
