import 'package:flutter/material.dart';

import '../skeleton_style.dart';
import './list_tile_skeleton.dart';

class ListSkeleton extends StatelessWidget {
  final SkeletonStyle style;
  final int length;

  ListSkeleton({
    Key? key,
    this.style: const SkeletonStyle.origin(),
    this.length: 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: length,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(color: Theme.of(context).dividerColor, height: 1.0);
      },
      itemBuilder: (BuildContext context, int index) {
        return ListTileSkeleton(style: style);
      },
    );
  }
}
