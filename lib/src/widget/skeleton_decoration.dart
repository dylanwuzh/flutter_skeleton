part of 'list_tile_skeleton.dart';

class _SkeletonDecoration extends BoxDecoration {
  _SkeletonDecoration({
    @required List<Color> colors,
    isAnim: true,
    _SkeletonAnimation animation,
    isCircle: false,
  }) : super(
            shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
            color: isAnim ? null : colors[1],
            gradient: isAnim
                ? LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: colors,
                    stops: [animation.animation.value - 1, animation.animation.value, animation.animation.value + 1],
                  )
                : null);
}
