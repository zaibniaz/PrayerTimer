import 'package:flutter/material.dart';
import './CurvePainter.dart';


class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 150.0,
      ),
      painter: CurvePainter(),
    );
  }
}