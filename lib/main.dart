import 'package:flutter/material.dart';
import './app.dart';
import './text_control.dart';
import './text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final textList = const [
    'this is the default text',
    'this is not the defaut text',
    'STOP CHANGING ME',
    'THIS IS YOUR LAST WARNING!',
    'ok i give up',
  ];
  void changeText() {
    if (textIndex + 1 >= textList.length) {
      setState(() {
        textIndex = 0;
      });
    } else {
      setState(() {
        textIndex++;
      });
    }
  }

  int textIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          child: App('This is the AppBar'),
          preferredSize: const Size.fromHeight(50),
        ),
        body: Column(
          children: [
            Textq(textList[textIndex]),
            TextControl(changeText),
          ],
        ),
      ),
    );
  }
}
