import 'package:flutter/material.dart';

import '../skeleton_animation.dart';
import '../skeleton_style.dart';
import '../skeleton_decoration.dart';
import '../skeleton_theme.dart';

class ListTileSkeleton extends StatefulWidget {
  final SkeletonStyle style;

  ListTileSkeleton({
    Key key,
    this.style: const SkeletonStyle.origin(),
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListTileSkeletonState();
}

class _ListTileSkeletonState extends State<ListTileSkeleton> with SingleTickerProviderStateMixin {
  SkeletonAnimation _skeletonAnimation;

  @override
  void initState() {
    super.initState();
    _skeletonAnimation = SkeletonAnimation(this);
  }

  @override
  void dispose() {
    _skeletonAnimation.dispose();
    super.dispose();
  }

  Color get backgroundColor {
    if (widget.style.theme == SkeletonTheme.Dark) {
      return Color(0xff424242);
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: _skeletonAnimation.animation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: widget.style.borderRadius,
          ),
          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 6),
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
      },
    );
  }

  Widget _renderAvatarView(width, height) {
    return widget.style.isShowAvatar
        ? Row(
            children: <Widget>[
              Container(
                height: width * 0.13,
                width: width * 0.13,
                decoration: SkeletonDecoration(
                  _skeletonAnimation,
                  theme: widget.style.theme,
                  isCircle: widget.style.isCircleAvatar,
                ),
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
              decoration: SkeletonDecoration(_skeletonAnimation, theme: widget.style.theme),
            ),
            Container(
              height: height * 0.007,
              width: width * 0.2,
              decoration: SkeletonDecoration(_skeletonAnimation, theme: widget.style.theme),
            ),
          ],
        ),
      );
    }
    return Container(
      height: height * 0.012,
      width: width * 0.3,
      margin: EdgeInsets.only(top: 4.0),
      decoration: SkeletonDecoration(_skeletonAnimation, theme: widget.style.theme),
    );
  }

  Widget _renderBottomLines(width, height) {
    final int count = widget.style.bottomLinesCount;
    if (count <= 0) {
      return SizedBox(height: 10.0);
    }

    List<double> widths = [width * 0.7, width * 0.8, width * 0.5];
    List<Widget> children = [];
    children.add(SizedBox(height: 20.0));
    for (int i = 0; i < count; i++) {
      children.add(Container(
        height: height * 0.007,
        width: widths[i % widths.length],
        decoration: SkeletonDecoration(_skeletonAnimation, theme: widget.style.theme),
      ));
      children.add(SizedBox(height: 10));
    }
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: children);
  }
}
