# Flutter Skeleton

[[Pub Packages]](https://pub.dartlang.org/packages/flutter_skeleton)

Flutter 骨架屏。

![示例][1]

## 用法

#### 1\. 添加依赖

在项目的 `pubspec.yaml` 文件中添加依赖：

```yaml
dependencies:
  flutter_skeleton: ^0.0.1
```

#### 2\. 获取包

执行 Flutter 的命令获取包资源：

```bash
$ flutter packages get
```

#### 3\. 导入控件

在项目中导入该控件：

```dart
import 'package:flutter_skeleton/flutter_skeleton.dart';
```

#### 4\. 显示控件

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

[Example APK](https://raw.githubusercontent.com/wuzhendev/assets/master/flutter-skeleton/flutter_skeleton_v0.0.1.apk)

![Example APK Download](https://github.com/wuzhendev/assets/blob/master/flutter-skeleton/flutter_skeleton_v0.0.1.png?raw=true)

[1]:https://github.com/wuzhendev/assets/blob/master/flutter-skeleton/flutter_skeleton_1.jpg?raw=true
