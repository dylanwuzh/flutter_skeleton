import 'package:flutter/material.dart';

import 'skeleton_animation.dart';
import 'skeleton_theme.dart';
import 'skeleton_constant.dart';

class SkeletonDecoration extends BoxDecoration {
  SkeletonDecoration(SkeletonAnimation animation, {theme: SkeletonTheme.Light, isCircle: false})
      : super(
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: theme != SkeletonTheme.Dark ? lightColors : darkColors,
            stops: [
              animation.animation.value - 1,
              animation.animation.value,
              animation.animation.value + 1,
            ],
          ),
        );
}
