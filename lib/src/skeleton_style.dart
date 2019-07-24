import './skeleton_theme.dart';

class SkeletonStyle {
  final SkeletonTheme theme;
  final bool isShowAvatar;
  final bool isCircleAvatar;
  final int bottomLinesCount;
  final double radius;

  SkeletonStyle({
    this.theme: SkeletonTheme.Light,
    this.isShowAvatar: true,
    this.isCircleAvatar: true,
    this.bottomLinesCount: 2,
    this.radius: 0.0,
  });

  const SkeletonStyle.origin()
      : theme = SkeletonTheme.Light,
        isShowAvatar = true,
        isCircleAvatar = true,
        bottomLinesCount = 2,
        radius = 0.0;
}
