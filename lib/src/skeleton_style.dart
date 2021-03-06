import 'package:flutter/material.dart';

import './skeleton_theme.dart';

class SkeletonStyle {
  final bool isAnimation;
  final bool isShowAvatar;
  final bool isCircleAvatar;
  final int barCount;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry? padding;
  final List<Color>? colors;
  final Color? backgroundColor;
  final SkeletonTheme theme;

  SkeletonStyle({
    this.isAnimation: true,
    this.isShowAvatar: true,
    this.isCircleAvatar: true,
    this.barCount: 2,
    this.borderRadius: BorderRadius.zero,
    this.padding,
    this.colors,
    this.backgroundColor,
    this.theme: SkeletonTheme.Light,
  });

  const SkeletonStyle.origin()
      : isAnimation = true,
        isShowAvatar = true,
        isCircleAvatar = true,
        barCount = 2,
        borderRadius = BorderRadius.zero,
        padding = const EdgeInsets.all(16.0),
        colors = null,
        backgroundColor = null,
        theme = SkeletonTheme.Light;
}
