import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.pink,
            body: SafeArea(
                child: Container(
              padding: EdgeInsets.only(left: 10, top: 40, right: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              size: 70.0,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Hello User',
                                )),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.menu,
                          )),
                    ],
                  ),
                  Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.pink[300], width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        child: Text(
                          'A card that can be tapped',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.map),
                          title: Text('Map'),
                        ),
                        ListTile(
                          leading: Icon(Icons.photo_album),
                          title: Text('Album'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Phone'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))));
  }
}
