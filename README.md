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
  flutter_skeleton: ^0.1.0+1
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
  style: SkeletonStyle(
    theme: SkeletonTheme.Light,
    isShowAvatar: false,
    barCount: 3,
    colors: [Color(0xff333333), Color(0xffffff45), Color(0xff333333)],
    isAnimation: true,
  ),
);

// card skeleton
CardSkeleton(
  style: SkeletonStyle(
    theme: SkeletonTheme.Light,
    isShowAvatar: true,
    isCircleAvatar: false,
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
    padding: EdgeInsets.all(32.0),
    barCount: 2,
    colors: [Color(0xffffffff)],
    backgroundColor: Color(0xFF009000),
    isAnimation: false,
  ),
);

// card list skeleton
CardListSkeleton(
  style: SkeletonStyle(
    theme: SkeletonTheme.Dark,
    isShowAvatar: true,
    isCircleAvatar: true,
    barCount: 2,
  ),
);
```

## SkeletonStyle Properties

| Name            | Type          | Meaning                        | Default                  |
|:----------------|:--------------|:-------------------------------|:-------------------------|
| isAnimation     | bool          | if show animation or not       | true                     |
| isShowAvatar    | bool          | if show avatar or not          | true                     |
| isCircleAvatar  | bool          | if the avatar is circle or not | true                     |
| barCount        | int           | the count of bar               | 2                        |
| borderRadius    | BorderRadius  | the radius of container        | 0                        |
| padding         | EdgeInsets    | the padding of container       | 16                       |
| colors          | List<Color>   | gradient color of bar          | null, specified by theme |
| backgroundColor | Color         | background color of container  | null, specified by theme |
| theme           | SkeletonTheme | pre-install theme              | SkeletonTheme.Light      |

## Example

[Example sources](https://github.com/wuzhendev/flutter_skeleton/tree/master/example)

[Example APK](https://raw.githubusercontent.com/wuzhendev/assets/master/flutter_skeleton/flutter_skeleton_v0.1.0.apk)

![Example APK Download](https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_v0.1.0.jpg?raw=true)

[1]:https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_4.jpg?raw=true
[2]:https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_5.jpg?raw=true
[3]:https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_6.jpg?raw=true
