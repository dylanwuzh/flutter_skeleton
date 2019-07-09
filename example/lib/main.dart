import 'package:flutter/material.dart';

import './card_list_skeleton_demo.dart';
import './card_skeleton_demo.dart';
import './list_skeleton_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skeleton Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, dividerColor: Color(0xFFebebeb)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(color: Colors.white, fontSize: 16.0);
    return Scaffold(
      appBar: AppBar(title: Text('Skeleton Demo')),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: Text("List Skeleton", style: textStyle),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ListSkeletonDemo();
                }));
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text("Card Skeleton", style: textStyle),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CardSkeletonDemo();
                }));
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text("Card List Skeleton", style: textStyle),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CardListSkeletonDemo();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
