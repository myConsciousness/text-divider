[![pub package](https://img.shields.io/pub/v/divider_with_text.svg)](https://pub.dev/packages/divider_with_text)

<!-- TOC -->

- [1. About](#1-about)
  - [1.1. Introduction](#11-introduction)
    - [1.1.1. Install Library](#111-install-library)
    - [1.1.2. Import It](#112-import-it)
    - [1.1.3. Use DividerWithText](#113-use-dividerwithtext)
  - [1.2. License](#12-license)
  - [1.3. More Information](#13-more-information)

<!-- /TOC -->

# 1. About

`DividerWithText` provides a customizable Flutter widget that makes it easy to display text in the middle of a Divider.

Using `DividerWithText`, you can easily display the following objects that you often see in websites and mobile apps. In addition, `DividerWithText` has flexible customization options that allow you to change the style to suit your taste.

- **_Wellknown text divider_**

<img width="443" alt="スクリーンショット 2022-02-08 18 00 39" src="https://user-images.githubusercontent.com/13072231/153102245-66f0e1eb-f690-4e64-ba56-c96e9c9edcf8.png">

Also `DividerWithText` supports vertical as well as horizontal direction.

## 1.1. Introduction

### 1.1.1. Install Library

**_With Dart:_**

```terminal
 dart pub add divider_with_text
```

**_With Flutter:_**

```terminal
 flutter pub add divider_with_text
```

### 1.1.2. Import It

```dart
import 'package:divider_with_text/divider_with_text.dart';
```

### 1.1.3. Use DividerWithText

```dart
import 'package:divider_with_text/divider_with_text.dart';

class ExampleDividerWithText extends StatelessWidget {
  const ExampleDividerWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Outputs a horizontal Divider with the text placed in the center.
                DividerWithText.horizontal(text: const Text('Horizontal Test')),
                // Outputs a vertical Divider with the text placed in the center.
                DividerWithText.vertical(text: const Text('Vertical Test')),
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

`DividerWithText` was designed and implemented by **_Kato Shinya_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/myConsciousness/divider_with_text/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/divider_with_text/latest/divider_with_text/divider_with_text-library.html)
- [Release Note](https://github.com/myConsciousness/divider_with_text/releases)
- [Bug Report](https://github.com/myConsciousness/divider_with_text/issues)
