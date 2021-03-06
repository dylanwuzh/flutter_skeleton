import 'package:flutter/material.dart';

import '../skeleton_style.dart';
import './card_skeleton.dart';

class CardListSkeleton extends StatelessWidget {
  final SkeletonStyle style;
  final int length;

  CardListSkeleton({
    Key? key,
    this.style: const SkeletonStyle.origin(),
    this.length: 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(top: 16.0),
      itemCount: length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: CardSkeleton(style: style),
        );
      },
    );
  }
}
