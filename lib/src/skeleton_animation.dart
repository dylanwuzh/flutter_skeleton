import 'package:flutter/material.dart';

class SkeletonAnimation {
  AnimationController _controller;
  Animation<double> animation;

  SkeletonAnimation(TickerProvider provider) {
    _controller = AnimationController(
      vsync: provider,
      duration: Duration(seconds: 1),
    );

    animation = Tween<double>(begin: -1.0, end: 2.0).animate(
        CurvedAnimation(curve: Curves.easeInOutSine, parent: _controller));

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        _controller.repeat();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  void dispose() {
    _controller.dispose();
  }
}
