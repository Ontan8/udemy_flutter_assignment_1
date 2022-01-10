import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final String titleVar;
  App(this.titleVar);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        child: Align(
          alignment: Alignment.center,
          child: Text(titleVar),
        ),
      ),
    );
  }
}
