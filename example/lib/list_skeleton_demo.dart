import 'package:flutter/material.dart';

import 'package:flutter_skeleton/flutter_skeleton.dart';

class ListSkeletonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListSkeletonDemoState();
}

class _ListSkeletonDemoState extends State<ListSkeletonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Skeleton Demo"),
//        actions: <Widget>[
//          GestureDetector(
//            onTap: _onPressedSetting,
//            child: Padding(
//              padding: EdgeInsets.symmetric(horizontal: 16.0),
//              child: Icon(Icons.settings, color: Colors.white),
//            ),
//          )
//        ],
      ),
      body: ListSkeleton(
        style: SkeletonStyle(
          theme: _theme,
          isShowAvatar: _isShowAvatar,
          barCount: 3,
          colors: [Color(0xff333333), Color(0xffffff45), Color(0xff333333)],
          isAnimation: true,
        ),
      ),
    );
  }

  SkeletonTheme _theme;
  bool _isShowAvatar = false;
//  final bool isCircularImage;
//  final int bottomLinesCount;
//  final double radius;

  void _onPressedSetting() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (BuildContext context, StateSetter setStateDialog) {
            return AlertDialog(
              titlePadding: EdgeInsets.only(left: 16.0, top: 16.0),
              title: Text("SkeletonConfig"),
              contentPadding: EdgeInsets.all(16.0),
              content: _renderConfigViews(context, setStateDialog),
              actions: <Widget>[FlatButton(child: Text("OK"), onPressed: () => Navigator.of(context).pop())],
            );
          });
        });
  }

  _renderConfigViews(BuildContext context, StateSetter setStateDialog) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Light"),
                Radio(
                  value: SkeletonTheme.Light,
                  groupValue: _theme,
                  onChanged: (value) {
                    setState(() {
                      _theme = value;
                    });
                    setStateDialog(() {
                      _theme = value;
                    });
                  },
                ),
                Text("Dark"),
                Radio(
                    value: SkeletonTheme.Dark,
                    groupValue: _theme,
                    onChanged: (value) {
                      setState(() {
                        _theme = value;
                      });
                      setStateDialog(() {
                        _theme = value;
                      });
                    }),
              ],
            ),
          ],
        )
      ],
    );
  }
}
