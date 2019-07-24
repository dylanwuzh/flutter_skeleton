import 'package:flutter/material.dart';

import './skeleton_theme.dart';

class SkeletonStyle {
  final SkeletonTheme theme;
  final bool isShowAvatar;
  final bool isCircleAvatar;
  final int bottomLinesCount;
  final BorderRadius borderRadius;

  SkeletonStyle({
    this.theme: SkeletonTheme.Light,
    this.isShowAvatar: true,
    this.isCircleAvatar: true,
    this.bottomLinesCount: 2,
    this.borderRadius: BorderRadius.zero,
  });

  const SkeletonStyle.origin()
      : theme = SkeletonTheme.Light,
        isShowAvatar = true,
        isCircleAvatar = true,
        bottomLinesCount = 2,
        borderRadius = BorderRadius.zero;
}
