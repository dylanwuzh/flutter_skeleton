import 'package:flutter/material.dart';

import './skeleton_theme.dart';

class SkeletonStyle {
  final bool isShowAvatar;
  final bool isCircleAvatar;
  final int bottomLinesCount;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;
  final Color color;
  final Color backgroundColor;
  final SkeletonTheme theme;

  SkeletonStyle({
    this.isShowAvatar: true,
    this.isCircleAvatar: true,
    this.bottomLinesCount: 2,
    this.borderRadius: BorderRadius.zero,
    this.padding,
    this.color,
    this.backgroundColor,
    this.theme: SkeletonTheme.Light,
  });

  const SkeletonStyle.origin()
      : isShowAvatar = true,
        isCircleAvatar = true,
        bottomLinesCount = 2,
        borderRadius = BorderRadius.zero,
        padding = const EdgeInsets.all(16.0),
        color = null,
        backgroundColor = null,
        theme = SkeletonTheme.Light;
}
