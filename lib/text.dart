import 'package:flutter/material.dart';

//ignore_for_file: prefer_const_constructors
class Textq extends StatelessWidget {
  final String textVar;
  Textq(this.textVar);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$textVar',
        style: TextStyle(
            color: Colors.cyan,
            fontSize: 28,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(30, 60, 30, 60),
    );
  }
}
