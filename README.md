[![pub package](https://img.shields.io/pub/v/text_divider.svg)](https://pub.dev/packages/text_divider)

<!-- TOC -->

- [1. About](#1-about)
  - [1.1. Introduction](#11-introduction)
    - [1.1.1. Install Library](#111-install-library)
    - [1.1.2. Import It](#112-import-it)
    - [1.1.3. Use TextDivider](#113-use-textdivider)
  - [1.2. Details](#12-details)
    - [1.2.1. Customize Options](#121-customize-options)
    - [1.2.2. Horizontal Constructor](#122-horizontal-constructor)
    - [1.2.3. Vertical Constructor](#123-vertical-constructor)
  - [1.3. License](#13-license)
  - [1.4. More Information](#14-more-information)

<!-- /TOC -->

# 1. About

`TextDivider` provides a customizable Flutter widget that makes it easy to display text in the middle of a Divider.

Using `TextDivider`, you can easily display the following objects that you often see in websites and mobile apps. In addition, `TextDivider` has flexible customization options that allow you to change the style to suit your taste.

- **_Wellknown text divider_**

<img width="443" alt="スクリーンショット 2022-02-08 18 00 39" src="https://user-images.githubusercontent.com/13072231/153102245-66f0e1eb-f690-4e64-ba56-c96e9c9edcf8.png">

Also `TextDivider` supports vertical as well as horizontal direction.

To see exactly what kind of output you can get by using `TextDivider`, see [this GitHub Pages](https://myconsciousness.github.io/text-divider/#/) made with Flutter and `TextDivider`.

## 1.1. Introduction

### 1.1.1. Install Library

**_With Dart:_**

```terminal
 dart pub add text_divider
```

**_With Flutter:_**

```terminal
 flutter pub add text_divider
```

### 1.1.2. Import It

```dart
import 'package:text_divider/text_divider.dart';
```

### 1.1.3. Use TextDivider

```dart
import 'package:text_divider/text_divider.dart';

class ExampleTextDivider extends StatelessWidget {
  const ExampleTextDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Outputs a horizontal Divider with the text placed in the center.
                TextDivider.horizontal(text: const Text('Horizontal Test')),
                // Outputs a vertical Divider with the text placed in the center.
                TextDivider.vertical(text: const Text('Vertical Test')),
              ],
            ),
          ),
        ),
      );
}
```

## 1.2. Details

### 1.2.1. Customize Options

| Name      | Type      | Required | Initial Value                                    | Remarks                                                                                                                                                |
| --------- | --------- | :------: | ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| text      | Text      |    ✅    | -                                                | This is a Text widget included in a commonly used material package. The text data set in this Text widget will be output to the center of the Divider. |
| direction | Direction |    ❌    | Direction.horizontal                             | This option specifies the direction of the Divider to be output.                                                                                       |
| size      | double?   |    ❌    | 16.0                                             | This option indicates the **_height_** if the Divider direction is horizontal, and the **_width_** if the Divider direction is vertical.               |
| thickness | double?   |    ❌    | 0.0                                              | The thickness of the line drawn within the divider.                                                                                                    |
| indent    | double?   |    ❌    | 0.0                                              | The amount of empty space to the leading edge of the divider.                                                                                          |
| endIndent | double?   |    ❌    | 0.0                                              | The amount of empty space to the trailing edge of the divider.                                                                                         |
| color     | Color?    |    ❌    | DividerThemeData.color OR ThemeData.dividerColor | The color to use when painting the line.                                                                                                               |

### 1.2.2. Horizontal Constructor

It is possible to specify the direction of the Divider with the argument of the default constructor, but a simpler way is to use the `horizontal` constructor. However, keep in mind that you cannot specify `const` in the caller of the `TextDivider` if you use this `horizontal` constructor.

### 1.2.3. Vertical Constructor

Also you can use the `vertical` constructor for vertical direction. However, keep in mind that you cannot specify `const` in the caller of the `TextDivider` if you use this `vertical` constructor.

## 1.3. License

```license
Copyright (c) 2022, Kato Shinya. All rights reserved.
Use of this source code is governed by a
BSD-style license that can be found in the LICENSE file.
```

## 1.4. More Information

`TextDivider` was designed and implemented by **_Kato Shinya_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/myConsciousness/text_divider/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/text_divider/latest/text_divider/text_divider-library.html)
- [Release Note](https://github.com/myConsciousness/text_divider/releases)
- [Bug Report](https://github.com/myConsciousness/text_divider/issues)
