import 'package:flutter/material.dart';

import '../skeleton_constant.dart';
import '../skeleton_style.dart';
import '../skeleton_theme.dart';

part 'skeleton_animation.dart';
part 'skeleton_decoration.dart';

class ListTileSkeleton extends StatefulWidget {
  final SkeletonStyle style;

  ListTileSkeleton({
    Key? key,
    this.style: const SkeletonStyle.origin(),
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListTileSkeletonState();
}

class _ListTileSkeletonState extends State<ListTileSkeleton>
    with SingleTickerProviderStateMixin {
  _SkeletonAnimation? _skeletonAnimation;

  @override
  void initState() {
    super.initState();
    if (widget.style.isAnimation) {
      _skeletonAnimation = _SkeletonAnimation(this);
    }
  }

  @override
  void dispose() {
    if (widget.style.isAnimation) {
      _skeletonAnimation!.dispose();
    }
    super.dispose();
  }

  Color? get _backgroundColor {
    if (widget.style.backgroundColor != null) {
      return widget.style.backgroundColor;
    }
    if (widget.style.theme == SkeletonTheme.Dark) {
      return darkBackgroundColor;
    }
    return lightBackgroundColor;
  }

  EdgeInsetsGeometry? get _padding {
    if (widget.style.padding != null) {
      return widget.style.padding;
    }
    return EdgeInsets.all(16.0);
  }

  _SkeletonDecoration _createSkeletonDecoration(bool isCircle) {
    List<Color>? colors = [];
    if (widget.style.colors != null && widget.style.colors!.length > 0) {
      colors = widget.style.colors;
    } else {
      colors =
          widget.style.theme != SkeletonTheme.Dark ? lightColors : darkColors;
    }

    return _SkeletonDecoration(
      animation: _skeletonAnimation,
      isCircle: isCircle,
      isAnimation: widget.style.isAnimation,
      colors: colors!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.style.isAnimation
        ? AnimatedBuilder(
            animation: _skeletonAnimation!.animation,
            builder: (context, child) {
              return _renderContainer();
            },
          )
        : _renderContainer();
  }

  Widget _renderContainer() {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: _backgroundColor, borderRadius: widget.style.borderRadius),
      padding: _padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _renderAvatarView(width, height),
              _renderTitleView(width, height),
            ],
          ),
          _renderBottomLines(width, height),
        ],
      ),
    );
  }

  Widget _renderAvatarView(width, height) {
    return widget.style.isShowAvatar
        ? Row(
            children: <Widget>[
              Container(
                height: width * 0.13,
                width: width * 0.13,
                decoration:
                    _createSkeletonDecoration(widget.style.isCircleAvatar),
              ),
              SizedBox(width: 20),
            ],
          )
        : Offstage();
  }

  Widget _renderTitleView(width, height) {
    if (widget.style.isShowAvatar) {
      return Container(
        height: width * 0.13,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: height * 0.009,
              width: width * 0.3,
              decoration: _createSkeletonDecoration(false),
            ),
            Container(
              height: height * 0.007,
              width: width * 0.2,
              decoration: _createSkeletonDecoration(false),
            ),
          ],
        ),
      );
    }
    return Container(
      height: height * 0.012,
      width: width * 0.3,
      margin: EdgeInsets.only(top: 4.0),
      decoration: _createSkeletonDecoration(false),
    );
  }

  Widget _renderBottomLines(width, height) {
    final int count = widget.style.barCount;
    if (count <= 0) {
      return Offstage();
    }

    List<double?> widths = [width * 0.7, width * 0.8, width * 0.5];
    List<Widget> children = [];
    children.add(SizedBox(height: 20.0));
    for (int i = 0; i < count; i++) {
      children.add(Container(
        height: height * 0.007,
        width: widths[i % widths.length],
        decoration: _createSkeletonDecoration(false),
      ));
      // last one has no bottom divider
      if (i < count - 1) {
        children.add(SizedBox(height: 10));
      }
    }
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: children);
  }
}
