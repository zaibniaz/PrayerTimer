import 'package:flutter/material.dart';

class Cardtext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'First Text',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
  }
}
