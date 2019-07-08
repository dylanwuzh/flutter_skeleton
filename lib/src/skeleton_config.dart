import './skeleton_theme.dart';

class SkeletonConfig {
  final SkeletonTheme theme;
  final bool isShowAvatar;
  final bool isCircularImage;
  final int bottomLinesCount;
  final double radius;

  SkeletonConfig({
    this.theme: SkeletonTheme.Light,
    this.isShowAvatar: true,
    this.isCircularImage: true,
    this.bottomLinesCount: 2,
    this.radius: 0.0,
  });

  const SkeletonConfig.origin()
      : theme = SkeletonTheme.Light,
        isShowAvatar = true,
        isCircularImage = true,
        bottomLinesCount = 2,
        radius = 0.0;
}
