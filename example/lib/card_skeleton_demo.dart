import 'package:flutter/material.dart';

import 'package:flutter_skeleton/flutter_skeleton.dart';

class CardSkeletonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CardSkeletonDemoState();
}

class _CardSkeletonDemoState extends State<CardSkeletonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe0e0e0),
      appBar: AppBar(title: Text("Card Skeleton Demo")),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: CardSkeleton(
          style: SkeletonStyle(
            theme: SkeletonTheme.Light,
            isShowAvatar: true,
            isCircleAvatar: false,
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            padding: EdgeInsets.all(32.0),
            barCount: 2,
            colors: [Color(0xffffffff)],
            backgroundColor: Color(0xFF009000),
            isAnimation: false,
          ),
        ),
      ),
    );
  }
}
