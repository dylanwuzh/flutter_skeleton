# Flutter Skeleton

[[Pub Packages]](https://pub.dartlang.org/packages/flutter_skeleton)

Flutter 骨架屏。

![示例][1]

![示例][2]

![示例][3]

## 用法

#### 1\. 添加依赖

在项目的 `pubspec.yaml` 文件中添加依赖：

```yaml
dependencies:
  flutter_skeleton: ^0.1.0+1
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

## SkeletonStyle 参数

| 名称             | 类型          | 描述             | 默认值                  |
|:----------------|:--------------|:----------------|:-----------------------|
| isAnimation     | bool          | 是否显示动画      | true                   |
| isShowAvatar    | bool          | 是否显示头像      | true                   |
| isCircleAvatar  | bool          | 头像是否显示成圆形 | true                   |
| barCount        | int           | 横条的数量        | 2                      |
| borderRadius    | BorderRadius  | 圆角值           | 0                      |
| padding         | EdgeInsets    | padding         | 16                     |
| colors          | List<Color>   | 横条的渐变        | null, 根据Theme获取默认值 |
| backgroundColor | Color         | 背景色           | null, 根据Theme获取默认值 |
| theme           | SkeletonTheme | 预置的Theme      | SkeletonTheme.Light     |

## Example

[Example sources](https://github.com/wuzhendev/flutter_skeleton/tree/master/example)

[Example APK](https://raw.githubusercontent.com/wuzhendev/assets/master/flutter_skeleton/flutter_skeleton_v0.1.0.apk)

![Example APK Download](https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_v0.1.0.jpg?raw=true)

[1]:https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_4.jpg?raw=true
[2]:https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_5.jpg?raw=true
[3]:https://github.com/wuzhendev/assets/blob/master/flutter_skeleton/flutter_skeleton_6.jpg?raw=true
