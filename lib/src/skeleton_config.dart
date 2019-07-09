import './skeleton_theme.dart';

class SkeletonConfig {
  final SkeletonTheme theme;
  final bool isShowAvatar;
  final bool isCircleAvatar;
  final int bottomLinesCount;
  final double radius;

  SkeletonConfig({
    this.theme: SkeletonTheme.Light,
    this.isShowAvatar: true,
    this.isCircleAvatar: true,
    this.bottomLinesCount: 2,
    this.radius: 0.0,
  });

  const SkeletonConfig.origin()
      : theme = SkeletonTheme.Light,
        isShowAvatar = true,
        isCircleAvatar = true,
        bottomLinesCount = 2,
        radius = 0.0;
}
