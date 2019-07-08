import 'package:flutter/material.dart';

import './skeleton_animation.dart';
import './skeleton_theme.dart';

const List<Color> lightColors = [Color(0xfff6f7f9), Color(0xffe9ebee), Color(0xfff6f7f9)];
const List<Color> darkColors = [Color(0xff616161), Color(0xff757575), Color(0xff616161)];

class SkeletonDecoration extends BoxDecoration {
  SkeletonDecoration(SkeletonAnimation animation, {theme = SkeletonTheme.Light, isCircle = false})
      : super(
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: theme == SkeletonTheme.Light ? lightColors : darkColors,
            stops: [
              animation.animation.value - 1,
              animation.animation.value,
              animation.animation.value + 1,
            ],
          ),
        );
}
