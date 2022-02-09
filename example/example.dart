// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:text_divider/text_divider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(home: MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Test TextDivider'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextDivider.horizontal(
                  text: const Text('Horizontal Test'),
                  color: Colors.black45,
                  thickness: 3.0,
                ),
                TextDivider.vertical(
                  text: const Text('Vertical Test'),
                  color: Colors.black45,
                  thickness: 3.0,
                ),
                TextDivider.horizontal(
                  text: const Text('Horizontal Test'),
                  color: Colors.black45,
                  thickness: 3.0,
                ),
                TextDivider.vertical(
                  text: const Text('Vertical Test'),
                  color: Colors.black45,
                  thickness: 3.0,
                ),
                TextDivider.horizontal(
                  text: const Text('Horizontal Test'),
                  color: Colors.black45,
                  thickness: 3.0,
                ),
              ],
            ),
          ),
        ),
      );
}
