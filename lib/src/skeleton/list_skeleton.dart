import 'package:flutter/material.dart';

import '../skeleton_config.dart';
import './list_tile_skeleton.dart';

class ListSkeleton extends StatelessWidget {
  final SkeletonConfig config;
  final int length;

  ListSkeleton({
    Key key,
    this.config: const SkeletonConfig.origin(),
    this.length: 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            border: Border(
                bottom: index == length - 1 ? BorderSide.none : BorderSide(color: Theme.of(context).dividerColor)),
          ),
          child: ListTileSkeleton(config: config),
        );
      },
    );
  }
}
