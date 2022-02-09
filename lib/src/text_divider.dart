// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:text_divider/src/direction.dart';
import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
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
            divider,
            text,
            divider,
          ],
        );
      case Direction.vertical:
        return Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              divider,
              text,
              divider,
            ],
          ),
        );
    }
  }

  Widget get divider {
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
