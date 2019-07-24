import 'package:flutter/material.dart';

import './skeleton_theme.dart';

class SkeletonStyle {
  final SkeletonTheme theme;
  final bool isShowAvatar;
  final bool isCircleAvatar;
  final int bottomLinesCount;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;

  SkeletonStyle({
    this.theme: SkeletonTheme.Light,
    this.isShowAvatar: true,
    this.isCircleAvatar: true,
    this.bottomLinesCount: 2,
    this.borderRadius: BorderRadius.zero,
    this.padding,
    this.backgroundColor,
  });

  const SkeletonStyle.origin()
      : theme = SkeletonTheme.Light,
        isShowAvatar = true,
        isCircleAvatar = true,
        bottomLinesCount = 2,
        borderRadius = BorderRadius.zero,
        padding = const EdgeInsets.all(16.0),
        backgroundColor = null;
}
