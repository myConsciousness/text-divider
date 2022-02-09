[![pub package](https://img.shields.io/pub/v/text_divider.svg)](https://pub.dev/packages/text_divider)

<!-- TOC -->

- [1. About](#1-about)
  - [1.1. Introduction](#11-introduction)
    - [1.1.1. Install Library](#111-install-library)
    - [1.1.2. Import It](#112-import-it)
    - [1.1.3. Use TextDivider](#113-use-textdivider)
  - [1.2. License](#12-license)
  - [1.3. More Information](#13-more-information)

<!-- /TOC -->

# 1. About

`TextDivider` provides a customizable Flutter widget that makes it easy to display text in the middle of a Divider.

Using `TextDivider`, you can easily display the following objects that you often see in websites and mobile apps. In addition, `TextDivider` has flexible customization options that allow you to change the style to suit your taste.

- **_Wellknown text divider_**

<img width="443" alt="スクリーンショット 2022-02-08 18 00 39" src="https://user-images.githubusercontent.com/13072231/153102245-66f0e1eb-f690-4e64-ba56-c96e9c9edcf8.png">

Also `TextDivider` supports vertical as well as horizontal direction.

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

## 1.2. License

```license
Copyright (c) 2022, Kato Shinya. All rights reserved.
Use of this source code is governed by a
BSD-style license that can be found in the LICENSE file.
```

## 1.3. More Information

`TextDivider` was designed and implemented by **_Kato Shinya_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/myConsciousness/text_divider/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/text_divider/latest/text_divider/text_divider-library.html)
- [Release Note](https://github.com/myConsciousness/text_divider/releases)
- [Bug Report](https://github.com/myConsciousness/text_divider/issues)
