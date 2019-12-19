import 'package:flutter/material.dart';
import './components/cardtext.dart';
import './components/prayerstimelistview.dart';

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
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.menu,
                                  )))),
                    ],
                  ),
                  Container(
                      width: double.infinity,
                      height: 200,
                      child: Card(
                          color: Colors.pink[100],
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.pink[300], width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Cardtext(),
                              Cardtext(),
                              Cardtext()
                            ],
                          ))),
                  PrayersTimeListView()
                ],
              ),
            ))));
  }
}
