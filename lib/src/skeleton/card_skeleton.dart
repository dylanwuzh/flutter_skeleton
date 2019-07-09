import 'package:flutter/material.dart';

import '../skeleton_config.dart';
import './list_tile_skeleton.dart';

class CardSkeleton extends StatelessWidget {
  final SkeletonConfig config;

  CardSkeleton({
    Key key,
    this.config: const SkeletonConfig.origin(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: Colors.transparent,
      child: ListTileSkeleton(config: config),
    );
  }
}
