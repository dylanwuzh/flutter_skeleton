import 'package:flutter/material.dart';

import '../skeleton_config.dart';
import './card_skeleton.dart';

class CardListSkeleton extends StatelessWidget {
  final SkeletonConfig config;
  final int length;

  CardListSkeleton({
    Key key,
    this.config: const SkeletonConfig.origin(),
    this.length: 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16.0),
      child: ListView.builder(
        itemCount: length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            child: CardSkeleton(config: config),
          );
        },
      ),
    );
  }
}
