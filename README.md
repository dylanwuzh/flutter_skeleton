# Flutter Skeleton

[[pub packages]](https://pub.dartlang.org/packages/flutter_skeleton)
| [中文说明](./README_zh-cn.md)

Flutter skeleton screen.

![Example][1]

![Example][2]

![Example][3]

## Usage

#### 1\. Depend

Add this to you package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_skeleton: ^0.0.1
```

#### 2\. Install

Run command:

```bash
$ flutter packages get
```

#### 3\. Import

Import in Dart code:

```dart
import 'package:flutter_skeleton/flutter_skeleton.dart';
```

#### 4\. Display Widget

```dart
// list skeleton
ListSkeleton(
  config: SkeletonConfig(
    theme: SkeletonTheme.Light,
    isShowAvatar: false,
    isCircleAvatar: true,
    bottomLinesCount: 3,
    radius: 0.0,
  ),
);

// card skeleton
CardSkeleton(
  config: SkeletonConfig(
    theme: SkeletonTheme.Light,
    isShowAvatar: true,
    isCircleAvatar: false,
    bottomLinesCount: 2,
    radius: 16.0,
  ),
);

// card list skeleton
CardListSkeleton(
  config: SkeletonConfig(
    theme: SkeletonTheme.Dark,
    isShowAvatar: true,
    isCircleAvatar: true,
    bottomLinesCount: 2,
    radius: 0.0,
  ),
);
```

## Example

[Example sources](https://github.com/wuzhendev/flutter_skeleton/tree/master/example)

[Example APK](https://raw.githubusercontent.com/wuzhendev/assets/master/flutter_skeleton/flutter_skeleton_v0.0.1.apk)

![Example APK Download](https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_v0.0.1.png?raw=true)

[1]:https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_1.jpg?raw=true
[2]:https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_2.jpg?raw=true
[3]:https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_3.jpg?raw=true
