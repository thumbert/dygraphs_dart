// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dygraphs_dart_example;

import 'dart:math';
import 'dart:html';
import 'package:dygraphs_dart/dygraphs_dart.dart';


main() {

  List data = [];
  for (int i=0; i < 1000; i++) {
    var base = 10 * sin(i/90);
    data.add([i, base, base + sin(i/2)]);
  }
  // shift one portion out of line
  var highlight_start = 450;
  var highlight_end = 500;
  for (var i = highlight_start; i <= highlight_end; i++) {
    data[i][2] += 5.0;
  }


  Option opt = new Option(
      labels: ['X', 'Est.', 'Actual'],
      animatedZooms: true);

  new Dygraph(querySelector('#graphdiv'),
      data,
      opt);
}
