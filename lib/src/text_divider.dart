// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:text_divider/src/direction.dart';
import 'package:flutter/material.dart';

/// This class is a widget that provides the ability to display arbitrary text in the center of the divider.
///
/// It is possible to specify the direction of the Divider with the argument of the default constructor,
/// but a simpler way is to use the [horizontal] constructor. However, keep in mind that you cannot specify `const`
/// in the caller of the `TextDivider` if you use this [horizontal] constructor.
///
/// Also you can use the [vertical] constructor for vertical direction. However, keep in mind that you cannot specify
/// `const` in the caller of the `TextDivider` if you use this [vertical] constructor.
class TextDivider extends StatelessWidget {
  /// Returns the new instance of [TextDivider] based on arguments.
  const TextDivider({
    Key? key,
    required this.text,
    this.direction = Direction.horizontal,
    this.size,
    this.thickness,
    this.indent,
    this.endIndent,
    this.color,
  }) : super(key: key);

  /// Returns the new instance of [TextDivider] in horizontal direction.
  static TextDivider horizontal({
    Key? key,
    required Text text,
    double? size,
    double? thickness,
    double? indent,
    double? endIndent,
    Color? color,
  }) =>
      TextDivider(
        key: key,
        text: text,
        direction: Direction.horizontal,
        size: size,
        thickness: thickness,
        indent: indent,
        endIndent: endIndent,
        color: color,
      );

  /// Returns the new instance of [TextDivider] in vertical direction.
  static TextDivider vertical({
    Key? key,
    required Text text,
    double? size,
    double? thickness,
    double? indent,
    double? endIndent,
    Color? color,
  }) =>
      TextDivider(
        key: key,
        text: text,
        direction: Direction.vertical,
        size: size,
        thickness: thickness,
        indent: indent,
        endIndent: endIndent,
        color: color,
      );

  /// The text that displays on the middle of divider.
  final Text text;

  /// The divider's direction.
  final Direction direction;

  /// The divider's size.
  final double? size;

  /// The thickness of the line drawn within the divider.
  final double? thickness;

  /// The amount of empty space on top of the divider.
  final double? indent;

  /// The amount of empty space under the divider.
  final double? endIndent;

  /// The color to use when painting the line.
  final Color? color;

  @override
  Widget build(BuildContext context) {
    switch (direction) {
      case Direction.horizontal:
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _divider,
            text,
            _divider,
          ],
        );
      case Direction.vertical:
        return Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _divider,
              text,
              _divider,
            ],
          ),
        );
    }
  }

  /// Returns the divider based on [direction].
  Widget get _divider {
    switch (direction) {
      case Direction.horizontal:
        return Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: Divider(
              height: size,
              thickness: thickness,
              indent: indent,
              endIndent: endIndent,
              color: color,
            ),
          ),
        );
      case Direction.vertical:
        return Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: VerticalDivider(
              width: size,
              thickness: thickness,
              indent: indent,
              endIndent: endIndent,
              color: color,
            ),
          ),
        );
    }
  }
}
