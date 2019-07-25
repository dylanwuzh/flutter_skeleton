import 'package:flutter/material.dart';

import 'package:flutter_skeleton/flutter_skeleton.dart';

class CardListSkeletonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CardListSkeletonDemoState();
}

class _CardListSkeletonDemoState extends State<CardListSkeletonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222222),
      appBar: AppBar(title: Text("Card List Skeleton Demo")),
      body: Container(
        child: CardListSkeleton(
          style: SkeletonStyle(
            theme: SkeletonTheme.Dark,
            isShowAvatar: true,
            isCircleAvatar: true,
            barCount: 2,
          ),
        ),
      ),
    );
  }
}
