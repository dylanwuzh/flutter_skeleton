import 'package:flutter/material.dart';

import '../skeleton_style.dart';
import './list_tile_skeleton.dart';

class CardSkeleton extends StatelessWidget {
  final SkeletonStyle style;

  CardSkeleton({
    Key? key,
    this.style: const SkeletonStyle.origin(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: Colors.transparent,
      child: ListTileSkeleton(style: style),
    );
  }
}
